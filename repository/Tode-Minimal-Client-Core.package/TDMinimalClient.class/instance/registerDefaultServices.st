services registry
registerDefaultServices
	| debuggerSession windowNameMap |
	Smalltalk at: #TDMinimalDebugger ifAbsent: [ ^self ].
	windowNameMap := Dictionary new.
	self
		registerService: [ :stonString :aClient | 
			| clientElement |
			clientElement := aClient objectSerializer fromString: stonString.
			clientElement topez: aClient.
			aClient editClientElement: clientElement ]
			for: #editStonElement:;
		registerService: [ :clientElement :aClient | 
			| windowId |
			clientElement editorWindowLocation == #debugger
				ifTrue: [ | result |
					windowId := 1.
					debuggerSession := TDMinimalDebuggerSession new
						stackClientElement: clientElement;
						client: aClient;
						yourself.
					windowNameMap at: clientElement editorWindowName put: debuggerSession.
					result := TDMinimalDebugger openOn: debuggerSession.
					result := aClient objectSerializer toString: debuggerSession debugger resumeResult.
					TDMinimalDebuggerContinueFromDebuggerNotification new
						returnValue: result;
						signal.
					nil	"should only happen when no handler exits" ]
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
		registerService: [ :clientElement :aSymbolOrStringOrSpecial :selectedString :aClient | 
			aClient session
				send: #value:value:value:value:value:
				to: clientElement menuActionBlockOopType
				withArgs:
					{aSymbolOrStringOrSpecial.
					clientElement clientElementOopType.
					selectedString.
					nil.
					nil}	"return result to caller" ]
			for: #executeMenuActionForClientSourceElement:action:selectedText:;
		registerService: [ :clientElement :aSymbolOrStringOrSpecial :selectionInterval :dirty :aClient | 
			aClient session
				send: #value:value:value:value:value:
				to: clientElement menuActionBlockOopType
				withArgs:
					{aSymbolOrStringOrSpecial.
					clientElement clientElementOopType.
					selectionInterval first.
					selectionInterval last.
					dirty}	"return result to caller" ]
			for: #executeMenuActionForClientSourceElement:action:selectionInterval:dirty:;
		registerService: [ :level :processOop :aClient | 
			[ aClient
				handleDebugExceptionsDuring: [ aClient session stepOver: (GsGciOopType fromInteger: processOop) level: level ] ]
				on: GsGciClientForwarderSend
				do: [ :ex | 
					| result |
					result := ex performSendNoForwarder: [  ].
					^ ex resume: (Array with: #resume with: result) ] ]
			for: #dbStep:forProcessOop:;
		registerService: [ :level :processOop :aClient | 
			[ aClient
				handleDebugExceptionsDuring: [ aClient session stepThrough: (GsGciOopType fromInteger: processOop) level: level ] ]
				on: GsGciClientForwarderSend
				do: [ :ex | 
					| result |
					result := ex performSendNoForwarder: [  ].
					^ ex resume: (Array with: #resume with: result) ] ]
			for: #dbStepThrough:forProcessOop:;
		registerService: [ :processOop :aClient | 
			aClient
				handleDebugExceptionsDuring: [ aClient session continueContext: (GsGciOopType fromInteger: processOop) ]
			"This should be a serialized object that is the return value for the original call" ]
			for: #dbContinue:;
		registerService: [ :sourceElement :sourceString :aClient | 
			aClient session
				send: #value:value:
				to: sourceElement setBlockOopType
				withArgs:
					{sourceString.
					sourceElement clientElementOopType}	"return result to caller" ]
			for: #setSourceForClientSourceElement:source:;
		registerService: [ :listElement :aClient | 
			| stonString |
			stonString := aClient session
				send: #value:
				to: listElement listBlockOopType
				withArgs: {listElement clientElementOopType}.
			aClient objectSerializer fromString: stonString	"return result to caller" ]
			for: #getListForClientListElement:;
		registerService: [ :windowId :aClient | 
			debuggerSession debugger refreshView.
			nil ]
			for: #refreshViewFor:;
		registerService: [ :windowId :aClient | 
			windowId == 11
				ifTrue: [ debuggerSession debugger clearUserEditFlag ]
				ifFalse: [ self halt ].
			nil	"noop for now" ]
			for: #clearUserEditFlagFor:;
		yourself