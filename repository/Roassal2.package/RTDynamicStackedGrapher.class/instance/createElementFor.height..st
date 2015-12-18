private - bar management
createElementFor: anObject height: barHeight
	| el |
	shapeBuilder width: self barWidth.
	shapeBuilder height: barHeight.
	el := shapeBuilder elementOn: anObject.
	el @ RTPopup.
	^ el