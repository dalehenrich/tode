response actions
executeLocalMenuAction: aSymbol keyboardEvent: aKeyboardEvent
	aSymbol numArgs = 0
		ifTrue: [ ^ self executeLocalMenuAction: aSymbol ]
		ifFalse: [ ^ self perform: aSymbol with: aKeyboardEvent ]