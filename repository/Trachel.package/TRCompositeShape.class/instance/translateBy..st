actions
translateBy: aPoint
	self shapesDo: [ :s | s translateBy: aPoint ]

"	shapeAndOffsets do: [ :tupple | 
		tupple first class == TRMultiCompositeShape
			ifTrue: [ tupple first translateBy: aPoint + (tupple first encompassingRectangle extent / 2) ]
			ifFalse: [ tupple first translateBy: aPoint ] ]"