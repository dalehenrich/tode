computing
addGapsTo: gaps closest: closest
	| innerGap |
	gaps add: (RTGapTree new c1: circles first c2: closest).
	gaps add: (RTGapTree new c1: closest c2: circles second).
	
	innerGap := RTGapTree new c1: circles second c2: closest.
	innerGap circles at: 3 put: circles first.
	gaps add: innerGap