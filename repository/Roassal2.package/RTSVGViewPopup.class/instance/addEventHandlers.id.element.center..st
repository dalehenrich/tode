adding
addEventHandlers: aStream id: aString element: aRTElement center: aNumber
	aStream nextPutAll: '<g visibility="hidden">', String cr.
	RTSVGVisitor visit: (self view value: aRTElement model) on: aStream center: aNumber.
	aStream 
		nextPutAll: (self mouseAction: aString);
		nextPutAll:  '</g>'