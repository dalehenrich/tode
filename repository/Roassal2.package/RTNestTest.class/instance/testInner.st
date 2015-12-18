tests
testInner

	| view host el1 el2 edge |
	view := RTView new.
	host := (RTBox new color: (Color purple alpha: 0.5)) element.
	el1 := RTBox element. 
	el2 := RTBox element.
	edge := RTLine edgeFrom: el1 to: el2.
	view add: host; add: el1; add: el2; add: edge.

	RTTreeLayout new on: (Array with: el1 with: el2) edges: view edges.
	RTNest new on: host nest: (Array with: el1 with: el2).

	self assert: el1 position equals: (0.5@ (-25/2)).	
	self assert: el2 position equals: (0.5@(25/2)).
	self assert: host position equals: (0@0).