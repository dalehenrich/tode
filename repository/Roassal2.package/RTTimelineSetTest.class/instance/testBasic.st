tests
testBasic

	| b f |
	b := RTTimeline new.
	
	f := RTTimelineSet new.
	f shape rectangle color: Color green.
	f start: [ :v | v ].
	f end: [ :v | v + 1 ].
	f lineIdentifier: #yourself.
	f objects: #(1 2 3).
	b add: f.
	
	b build.
	
	self assert: b numberOfEvents equals: 3