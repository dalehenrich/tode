shapes
cross
	| s |
	s := RTCompositeShape new.
	s add: (RTBox new height: 10; width: 3). 
	s add: (RTBox new height: 3; width: 10).

	^ self shape: s