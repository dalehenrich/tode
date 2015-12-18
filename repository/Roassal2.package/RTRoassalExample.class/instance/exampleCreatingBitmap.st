sources
exampleCreatingBitmap

	| v  s trachelShape |
	v := RTView new.

	s := RTBitmap element.
	v add: s.

	trachelShape := s trachelShape.
	trachelShape extent: 180 @ 100.
	trachelShape fillColor: Color blue.

	1 to: 80 do: [ :i |
		trachelShape at: i @ i put: Color green ].

	^ v