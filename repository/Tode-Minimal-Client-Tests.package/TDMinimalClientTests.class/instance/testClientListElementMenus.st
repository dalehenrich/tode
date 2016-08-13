tests - client list element
testClientListElementMenus
	| cmdResult clientElement spec menuSpec menuResponseAction |
	self client interactive: true.
	self client
		registerService: [ :stonString :aClient | 
			clientElement := aClient objectSerializer fromString: stonString.
			clientElement topez: aClient.
			1	"windowId" ]
		for: #editStonElement:.
	self client
		registerService: [ :stonString :aClient | 
			| interaction response |
			interaction := aClient objectSerializer fromString: stonString.
			response := 7.
			aClient objectSerializer toString: response ]
		for: #interactWith:.
	cmdResult := self client evaluateCommands: 'eval `3+4`; edit'.
	self assert: cmdResult asString equals: '[58 sz:0 SmallInteger] 7'.
	menuSpec := clientElement menuActionSpec.
	spec := menuSpec at: 3.
	menuResponseAction := client session
		send: #value:value:value:
		to: clientElement menuActionBlockOopType
		withArgs:
			{(spec at: 3).
			clientElement clientElementOopType.
			1}.
	self assert: menuResponseAction equals: #refresh