hooks
showResizeHandleOn: element
	| handle |
	self removeResizeHandleOn: element.
	
	handle := self createHandleFor: element.
	
	element view add: handle.
	handle translateTo: element encompassingRectangle bottomRight - (handle extent / 2).
	element attributeAt: #resizeHandle put: handle. 
	element view signalUpdate