accessing
step
	"Return the step between each tick"
	
	^ (self maxValue - self minValue) / self numberOfTicks.
"	| s |
	s := (self maxValue - self minValue) / self numberOfTicks.
	((self minValue to: self maxValue by: s) includes: 0.0) ifTrue: [ ^ s ].
	
	numberOfTicks := numberOfTicks + 1.
	s := (self maxValue - self minValue) / self numberOfTicks.

	self maxValue: (self maxValue / s) asInteger * s. 
	s := (self maxValue - self minValue) / self numberOfTicks.
	^ s"