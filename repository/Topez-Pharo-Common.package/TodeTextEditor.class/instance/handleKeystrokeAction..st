typing support
handleKeystrokeAction: aBlock
	| result |
	result := aBlock value.
	result == true
			ifTrue: [self doneTyping.
			self storeSelectionInParagraph.
			^self].
	self openTypeIn.
	self hasSelection 
		ifTrue: [ "save highlighted characters"
			self editingState previousInterval: self selectionInterval selection: self selection].
	self editingState unselect.
	self storeSelectionInParagraph