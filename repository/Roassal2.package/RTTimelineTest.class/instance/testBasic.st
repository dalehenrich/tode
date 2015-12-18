tests
testBasic

	| b s |
	b := RTTimeline new.
	
	s := RTTimelineSet new.
	s objects: #(1 2 3 4).
	s end: [ :v | v + 1 ].
	b add: s.
	
	self assert: b numberOfSets equals: 1.
	self assert: b numberOfEvents equals: 4.
	self assert: b numberOfLines equals: 4.
	
	b build.
	
	self assert: b numberOfSets equals: 1.
	self assert: b numberOfEvents equals: 4.
	self assert: b numberOfLines equals: 4.