debugging
handleDebugExceptionsDuring: aBlock
	"if you make changes here (like adding new return values), see TDDebugTool>>debugExceptionSymbols"

	| result |
	[ result := aBlock value ]
		on: TDBreakpointNotification , TDHaltNotification , TDErrorNotification
		do: [ :ex | 
			| errorNumber |
			self halt.
			(ex isKindOf: TDErrorNotification)
				ifTrue: [ ^ #error ].
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