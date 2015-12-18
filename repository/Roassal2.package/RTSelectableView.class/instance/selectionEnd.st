selection events
selectionEnd
	| evt |
	self removeShape.
	evt := RTSelectionEnd new.
	evt group: group.
	self announcer announce: evt.
	
	
	