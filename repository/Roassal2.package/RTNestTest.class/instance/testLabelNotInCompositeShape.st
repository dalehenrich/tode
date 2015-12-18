composed shape
testLabelNotInCompositeShape

	| v box  e bigElement |
	v := RTView new.

	box := RTBox new.
	e := box element.
	v add: e.

	RTNest new
		for: (Array with: e) add: [ :group :model | 
			bigElement := ((RTBox new size: 20; color: Color red) element).
			group add: bigElement ].

	self assert: bigElement position equals: e position.
	self assert: bigElement trachelShape position equals: e trachelShape position.