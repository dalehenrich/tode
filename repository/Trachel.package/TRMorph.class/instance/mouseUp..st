event handling
mouseUp: evt
	self isDragging ifTrue: 
		[self rtMouseDragEnd: evt ].
	evt wasHandled: true.