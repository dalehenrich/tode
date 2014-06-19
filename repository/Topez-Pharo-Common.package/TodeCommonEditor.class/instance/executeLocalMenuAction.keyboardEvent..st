menu support
executeLocalMenuAction: aSymbol keyboardEvent: aKeyboardEvent
	aSymbol numArgs = 0
		ifTrue: [ ^ self perform: aSymbol ]
		ifFalse: [ ^ self perform: aSymbol with: aKeyboardEvent ]