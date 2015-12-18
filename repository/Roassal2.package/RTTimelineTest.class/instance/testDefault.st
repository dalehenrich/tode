tests
testDefault
	
	self assert: RTTimeline new numberOfSets equals: 0.
	self assert: (RTTimeline new build; numberOfSets) equals: 0