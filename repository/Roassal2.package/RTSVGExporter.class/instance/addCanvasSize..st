svg
addCanvasSize: bounds
	|pair|
	pair := self getFinalBounds: bounds.
	stream 
		nextPutAll: ('width="<1p>px" height="<2p>px" ' expandMacrosWith: pair first with: pair second).