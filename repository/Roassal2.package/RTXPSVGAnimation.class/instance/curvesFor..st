as yet unclassified
curvesFor: index
	| t res acurves bcurves c2 |
	t := animatedValue value.
	acurves := curves0 at: index.
	bcurves := curves1 at: index .
	res := Array new: acurves size.
	
	acurves doWithIndex: [ :c1 :i | 
		c2 := bcurves at: i.
		res at: i put: c1 key -> (Array with: (c1 value first interpolateTo: c2 value first at: t))  ].
	
	^ res