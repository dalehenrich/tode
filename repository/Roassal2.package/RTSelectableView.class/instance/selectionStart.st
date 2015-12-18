selection events
selectionStart
	| evt |
	evt := RTSelectionStart new.
	group := RTGroup new.
	evt group: group.
	self announcer announce: evt.