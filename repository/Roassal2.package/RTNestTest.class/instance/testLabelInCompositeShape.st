composed shape
testLabelInCompositeShape

	| v lbl box cs e bigElement |
	v := RTView new.

	lbl := RTLabel new text: ''.
	box := RTBox new.
	cs := RTCompositeShape new.
	cs add: lbl.
	cs add: box.
	cs vertical.

	e := cs element.
	v add: e.

	RTNest new
		for: (Array with: e) add: [ :group :model | 
			bigElement := ((RTBox new size: 20; color: Color red) element).
			group add: bigElement. ].

	self assert: bigElement position ~= e position.
	self assert: bigElement trachelShape position equals: e trachelShape shapes second position.