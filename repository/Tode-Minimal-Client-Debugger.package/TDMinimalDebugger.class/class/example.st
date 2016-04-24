example
example
	"self example"

	| debugger debuggerSession |
	(TDMinimalClient
		loginWith: (GsDevKit_home sessionDescriptionNamed: SCIGemStoneServerConfigSpec defaultSessionName))
		debugMode: true;
		interactive: true;
		registerService: [ :stonString :aClient | 
			| windowId clientElement |
			clientElement := aClient objectSerializer fromString: stonString.
			clientElement topez: aClient.
			clientElement editorWindowLocation == #debugger
				ifTrue: [ windowId := 1.
					debugger := self
						openOn:
							(debuggerSession := TDMinimalDebuggerSession new
								stackClientElement: clientElement;
								client: aClient;
								yourself) ]
				ifFalse: [ windowId := 11.
					clientElement editorWindowLocation == #method
						ifTrue: [ debuggerSession codeClientElement: clientElement ]
						ifFalse: [ clientElement editorWindowLocation == #context
								ifTrue: [ debuggerSession contextClientElement: clientElement ]
								ifFalse: [ self halt ] ] ].
			windowId ]
			for: #editStonElement:;
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