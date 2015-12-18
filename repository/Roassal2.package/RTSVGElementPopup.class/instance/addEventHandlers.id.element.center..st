adding
addEventHandlers: aStream id: aString element: aRTElement  center: aNumber
	| visitor myElement|
	myElement := (self element value: aRTElement ).
	aStream nextPutAll: '<g visibility="hidden">', String cr.
	visitor := RTSVGVisitor new stream: aStream; center: aNumber; yourself.
	visitor canvas: myElement encompassingRectangle.
	visitor visitElement: myElement.
	aStream 
		nextPutAll: (self mouseAction: aString);
		nextPutAll:  '</g>'