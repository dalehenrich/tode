as yet unclassified
displayTool
	self assert: (self workspace isNotNil).
	self view clean.
	self setMenuButton.
	
	self displayToolContent.
	
	self view canvas camera focusOnCenter.
	self view signalUpdate.
	
	