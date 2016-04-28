example
example
	"self example"

	| client debugger debuggerSession windowNameMap |
	windowNameMap := Dictionary new.
	client := (TDMinimalClient
		loginWith: (GsDevKit_home sessionDescriptionNamed: SCIGemStoneServerConfigSpec defaultSessionName))
		debugMode: true;
		interactive: true;
		registerService: [ :stonString :aClient | 
			| clientElement |
			clientElement := aClient objectSerializer fromString: stonString.
			clientElement topez: aClient.
			aClient editClientElement: clientElement ]
			for: #editStonElement:;
		registerService: [ :clientElement :aClient | 
			| windowId |
			clientElement editorWindowLocation == #debugger
				ifTrue: [ windowId := 1.
					debugger := self
						openOn:
							(debuggerSession := TDMinimalDebuggerSession new
								stackClientElement: clientElement;
								client: aClient;
								yourself).
					(debuggerSession stack at: debuggerSession initialStackFrameIndex) selectFrame.
					windowNameMap at: clientElement editorWindowName put: debuggerSession ]
				ifFalse: [ (windowNameMap at: clientElement editorWindowName ifAbsent: [  ])
						ifNil: [ clientElement editorWindowLocation == #method
								ifTrue: [ windowId := 11.
									debuggerSession codeClientElement: clientElement ]
								ifFalse: [ clientElement editorWindowLocation == #context
										ifTrue: [ windowId := 21.
											debuggerSession contextClientElement: clientElement ]
										ifFalse: [ self error: 'Unknown client element' ] ].
							windowNameMap at: clientElement editorWindowLocation put: debuggerSession ]
						ifNotNil: [ :editorWindowName | debuggerSession contextClientElement: clientElement ] ].
			windowId ]
			for: #editClientElement:;
		registerService: [ :listElement :index :listSelections :aClient | 
			aClient session
				send: #cull:cull:cull:cull:
				to: listElement itemSelectedBlockOopType
				withArgs:
					{listElement clientElementOopType.
					index.
					false.
					nil}	"return result to caller" ]
			for: #itemSelectedForClientListElement:index:listSelections:;
		registerService:
				[ :methodSourceElement :aClient | aClient session send: #value to: methodSourceElement getBlockOopType withArgs: #()	"return result to caller" ]
			for: #getSourceForClientSourceElement:;
		registerService: [ :clientElement :aSymbolOrStringOrSpecial :selectionIndex :aClient | 
			aClient session
				send: #value:value:value:
				to: clientElement menuActionBlockOopType
				withArgs:
					{aSymbolOrStringOrSpecial.
					clientElement clientElementOopType.
					selectionIndex}	"return result to caller" ]
			for: #executeMenuActionForClientListElement:action:selectionIndex:;
		registerService: [ :level :processOop :aClient | 
			[ aClient
				handleDebugExceptionsDuring: [ aClient session stepOver: (GsGciOopType fromInteger: processOop) level: level ] ]
				on: GsGciClientForwarderSend
				do: [ :ex | 
					| result |
					result := ex performSendNoForwarder: [  ].
					^ ex resume: (Array with: #resume with: result) ] ]
			for: #dbStep:forProcessOop:;
		registerService: [ :processOop :aClient | 
			aClient
				handleDebugExceptionsDuring: [ aClient session continueContext: (GsGciOopType fromInteger: processOop) ] ]
			for: #dbContinue:;
		registerService: [ :listElement :aClient | 
			| stonString |
			stonString := aClient session
				send: #value:
				to: listElement listBlockOopType
				withArgs: {listElement clientElementOopType}.
			aClient objectSerializer fromString: stonString	"return result to caller" ]
			for: #getListForClientListElement:.
	false
		ifTrue: [ client session gciGemTrace: 2 ].
	client evaluate: 'eval `3 halt + 4 halt + 3`'