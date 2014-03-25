menu support
executeMenuAction: aSymbol
	| action theEditor |
	theEditor := self theEditor.
	theEditor selectLine.
	action := self clientElement executeMenuAction: aSymbol selectedText: theEditor selection asString.
	^ self handleResponseActions: action