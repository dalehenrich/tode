utils
makePositive: anAngle
	| result |
	anAngle < 0
		ifTrue: [ result := anAngle + 360 ]
		ifFalse: [ result := anAngle ].
	^ result