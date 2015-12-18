hooks
transformDistance: distanceAsPoint forElement: anElement
	^ distanceAsPoint
"Transcript show: distanceAsPoint printString; cr.
	^ (rectangle containsPoint: distanceAsPoint + anElement position)
		ifTrue: [ distanceAsPoint ]
		ifFalse: [ 0 @ 0 ]"