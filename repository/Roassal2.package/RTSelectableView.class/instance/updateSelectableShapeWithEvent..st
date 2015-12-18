as yet unclassified
updateSelectableShapeWithEvent: event
	| s newgroup |
	s := self getOrCreateShapeForView.
	
	self updateShape: s with: event.
	
	newgroup := self getSelectedElementsWith: s.
	
	group = newgroup ifFalse: [ | evt |
		self unhighlight: group.
		group := newgroup.
		evt := RTSelectionChange new.
		evt group: group.
		self announcer announce: evt. ].
	view canvas signalUpdate.
	