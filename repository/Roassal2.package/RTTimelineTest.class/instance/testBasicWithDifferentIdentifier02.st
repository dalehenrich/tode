tests
testBasicWithDifferentIdentifier02

	| b s |
	b := RTTimeline new.
	
	s := RTTimelineSet new.
	s objects: #(1 2 3 4).
	s end: [ :v | v + 1 ].
	b add: s.
	
	s := RTTimelineSet new.
	s objects: #(1 2 3 4 5).
	s end: [ :v | v + 2 ].
	b add: s.
	
	b build.
	
	self assert: b numberOfSets equals: 2.
	self assert: b numberOfEvents equals: 9.
	self assert: b numberOfLines equals: 5.