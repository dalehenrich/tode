utility
renderAxis
	| centralPoint aPoint anotherPoint |
	super renderAxis.
	
	centralPoint := self extent x @ self centralPoint y.
	axisConfigurationYRight positionLabel: [ :aLabel :aTick | aLabel translateTo: aTick position + (40 @ 0) ];
		minValue:
				(self minYRight > 0
						ifTrue: [ 0 ]
						ifFalse: [ self minYRight ]);
		maxValue: self maxYRight.
	
	aPoint := centralPoint x @ 0.
	anotherPoint := centralPoint x @ extent y negated.
	axisConfigurationYRight fromPoint: aPoint.
	axisConfigurationYRight toPoint: anotherPoint.
	axisConfigurationYRight axisFrom: aPoint to: anotherPoint