typing support
performCmdActionsWith: aKeyboardEvent shifted: aBoolean return: return
	| asciiValue actions action |
	self initializeCmdMaps.
	asciiValue := aKeyboardEvent keyValue.
	actions := aBoolean
		ifTrue: [ self localShiftCmdMap ]
		ifFalse: [ self localCmdMap ].
	action := actions at: asciiValue + 1.
	action key == #noop:
		ifTrue: [ ^ false ].
	return value: (action value perform: #executeKeybinding:actionSymbol: with: aKeyboardEvent with: action key)