typing support
performCmdActionsWith: aKeyboardEvent shifted: aBoolean return: return
	| asciiValue actions assoc receiver actionArray selector arg |
	self initializeCmdMaps.
	asciiValue := aKeyboardEvent keyValue.
	actions := aBoolean
		ifTrue: [ self localShiftCmdMap ]
		ifFalse: [ self localCmdMap ].
	assoc := actions at: asciiValue + 1.
	actionArray := assoc key.
	receiver := assoc value.
	selector := actionArray at: 1.
	arg := actionArray at: 2.
	selector == #noop:
		ifTrue: [ ^ false ].
	return value: (receiver perform: selector with: arg)