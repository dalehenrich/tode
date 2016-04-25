example
example
	"self example"

	| debugger debuggerSession windowNameMap |
	windowNameMap := Dictionary new.
	(TDMinimalClient
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
					windowNameMap at: clientElement editorWindowName put: debuggerSession ]
				ifFalse: [ (windowNameMap at: clientElement editorWindowName ifAbsent: [  ])
						ifNil: [ clientElement editorWindowLocation == #method
								ifTrue: [ windowId := 11.
									debuggerSession codeClientElement: clientElement ]
								ifFalse: [ clientElement editorWindowLocation == #context
										ifTrue: [ windowId := 21.
											debuggerSession contextClientElement: clientElement ]
										ifFalse: [ self error: 'Unknown client element' ] ].
							windowNameMap
								at: #debuggerSession
								put: clientElement editorWindowLocation ]
						ifNotNil: [ :editorWindowName | self halt ] ].
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
		evaluate: 'foo `3+4`';
		yourself