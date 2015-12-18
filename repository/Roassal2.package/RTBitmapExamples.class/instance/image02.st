examples
image02

	"
	self new image02

	This example directly talk to Trachel
	"

	| v  s trachelShape |
	v := RTView new.

	s := RTBitmap element.
	v add: s.

	trachelShape := s trachelShape.
	trachelShape extent: 180 @ 100.
	trachelShape fillColor: Color blue.

	1 to: 80 do: [ :i |
		trachelShape at: i @ i put: Color green ].

	v open