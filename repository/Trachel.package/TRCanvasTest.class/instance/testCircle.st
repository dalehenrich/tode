tests
testCircle

	| c  |
	c := TRCanvas new.
	100 to: 200 by: 20 do: [ :i |
		 c buildCircleFrom: 50 @ 50 to: i @ 100 color: (Color red alpha: 0.2).
	].
	self assert: c numberOfShapes = (100 to: 200 by: 20) size 