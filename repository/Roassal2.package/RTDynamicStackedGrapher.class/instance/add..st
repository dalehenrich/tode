adding
add: anObject
	| positionInView el center barHeight yValue graphCenter |
	self defineCenterElement.
	self removeExceedingBar.
	yValue := self yValueFor: anObject.
	positionInView := self getPixelPositionOf: 0 @ yValue.
	graphCenter := centerElement position.
	center := self getPixelPositionOf: 0 @ 0.
	barHeight := (positionInView y - center y) abs.
	el := self createElementFor: anObject height: barHeight.
	yValue > 0
		ifTrue: [ el translateTo: self barXPosition @ (positionInView y + (barHeight / 2)) + graphCenter ]
		ifFalse: [ el translateTo: self barXPosition @ (positionInView y - (barHeight / 2)) + graphCenter ].
	view add: el.
	
	textBelow ifNotNil: [ 
		| l |
		l := RTLabelled new text: textBelow.
		yValue > 0 ifTrue: [ l below ].
		el @ l ].
	
	view signalUpdate.
	allAddedElements add: el.
	^ el