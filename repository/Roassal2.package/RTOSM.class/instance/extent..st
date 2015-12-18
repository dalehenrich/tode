accessing
extent: aPoint
	self assert: (aPoint x > 0 and: [ aPoint y > 0 ]).
	self rectangle: (aPoint negated / 2 extent: aPoint)