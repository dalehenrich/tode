utility
renderAxis
	| centralPoint |
	centralPoint := self centralPoint.
"	shouldUseOptimalTicksAndLabelsForY ifTrue: 
	[ 
		| t |
		t := self optimalNumberOfTicksForMin: self minY max: self maxY wishedNumberOfTicks: self getAxisY numberOfTicks.
		self getAxisY numberOfTicks: t; numberOfLabels: t
	 ].
"
	self adjustXAxisIfNecessary.

	self axisYFrom: centralPoint x @ 0 to: centralPoint x @ extent y negated.
	self axisXFrom: 0 @ centralPoint y to: extent x @ centralPoint y.