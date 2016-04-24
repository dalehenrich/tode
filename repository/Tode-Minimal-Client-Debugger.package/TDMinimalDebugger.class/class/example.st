example
example
	"self example"

	(TDMinimalClient
		loginWith: (GsDevKit_home sessionDescriptionNamed: SCIGemStoneServerConfigSpec defaultSessionName))
		debugMode: true;
		interactive: true;
		registerService: [ :stonString :aClient | 
			| clientElement |
			clientElement := aClient objectSerializer fromString: stonString.
			clientElement topez: aClient.
			clientElement editorWindowLocation == #debugger
				ifTrue: [ self
						openOn:
							(TDMinimalDebuggerSession new
								stackClientElement: clientElement;
								client: aClient;
								yourself) ]
				ifFalse: [ self halt ].
			1	"windowId" ]
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
		evaluate: 'foo `3+4`';
		yourself