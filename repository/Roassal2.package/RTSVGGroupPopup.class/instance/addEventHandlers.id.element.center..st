adding
addEventHandlers: aStream id: aString element: aRTElement center: aNumber
	| visitor myGroup |
	myGroup := (self group value: RTGroup new value: aRTElement).
	aStream nextPutAll: '<g visibility="hidden">', String cr.
	visitor := RTSVGVisitor new stream: aStream; center: aNumber; yourself.
	visitor canvas: myGroup encompassingRectangle.
	visitor visitGroup: myGroup.
	aStream 
		nextPutAll: (self mouseAction: aString);
		nextPutAll:  '</g>'