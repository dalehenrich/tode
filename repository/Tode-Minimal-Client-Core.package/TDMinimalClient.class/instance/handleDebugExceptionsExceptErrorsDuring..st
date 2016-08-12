debugging
handleDebugExceptionsExceptErrorsDuring: aBlock
	"We want to give the client error handlers a chance to run rather than re-use same debugger for a subsequent error"

	"if you make changes here (like adding new return values), see TDDebugTool>>debugExceptionSymbols"

	| result |
	[ result := aBlock value ]
		on: TDBreakpointNotification , TDHaltNotification
		do: [ :ex | 
			| errorNumber |
			"error occurred during execution"
			errorNumber := ex errorNumber.
			errorNumber = 6002
				ifTrue: [ ^ #singleStep ].
			"single step breakpoint ... as expected"
			errorNumber = 6005
				ifTrue: [ ^ #breakpoint ].
			"method breakpoint"
			errorNumber = 2709
				ifTrue: [ ^ #halt ].
			"halt occurred during execution"
			errorNumber = 6006
				ifTrue: [ ^ #blockOrMethodReturn ].
			"return from method or block breakpoint ... as expected"
			self error: 'another breakpoint error number?' ].
	^ result