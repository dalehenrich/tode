public - adding
add: anObject
	| positionInView el |
	positionInView := self getPixelPositionOf: (x rtValue: anObject) @ (y rtValue: anObject).
	el := shapeBuilder elementOn: anObject.
	el translateTo: positionInView.
	view add: el.
	view signalUpdate.
	allAddedElements add: el.
	^ el