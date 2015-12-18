public
routes: objects from: aPointBlock to: anotherPointBlock
	| toPixel fromPixel fromElement toElement edge |
	shapeBuilder ensure: RTLine.
	pointShapeBuilder ensure: RTEllipse.
	
	objects do: [ :object |
		toPixel := self translateGeoPositionToPixels: (aPointBlock rtValue: object).
		fromPixel := self translateGeoPositionToPixels: (anotherPointBlock rtValue: object).
		fromElement := pointShapeBuilder elementOn: 'from'.
		toElement := pointShapeBuilder elementOn: 'to'.
		fromElement translateTo: fromPixel.
		toElement translateTo: toPixel.
		view add: fromElement.
		view add: toElement.
		
		edge := shapeBuilder edgeFrom: fromElement to: toElement.
		view add: edge.
	].	