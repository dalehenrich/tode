hooks
renderIn: aView
	| x y el |
	x := 0.
	y := 0.
	vertical do: [ :v |
		horizontal do: [ :h |
			(function value: v value: h) ifTrue: [ 
				| size |
				"el := (RTBox new size: 5; color: Color gray) element."
				el := shapeBuilder elementOn: nil.
				size := el width.
				el translateTo: (x * size) @ (y * size).
				aView add: el.
			].
			x := x + 1.
		].
		x := 0.
		y := y + 1.
	].