drawing
render
	| dev svg k str index offset |
	dev := points collectWithIndex: [ :p :i | p + (desviation*i). ].
	
	svg := TRSVGPath new.
	svg color: color.
	offset := -0.15.
	k := builder getPixelPositionOf: (1+offset)@dev first.
	str := 'M', k x asString,' ', k y asString.
	(2 to: dev size) do: [ :i| | p |
		p := dev at: i.
		k := builder getPixelPositionOf: (i+offset)@p.
		str := str, 'L', k x asString,' ', k y asString.
		].
	dev := (points collectWithIndex:[:p :i | p - (desviation*i)] ).
	(1 to: dev size) do: [ :i | | p |
		index := dev size - i +1.
		p := dev at: index.
		k := builder getPixelPositionOf: (index+offset)@p.
		str := str, 'L', k x asString,' ', k y asString. ].
	
	str := str, 'Z'.
	svg path: str.
	builder view canvas addShape: svg.
	