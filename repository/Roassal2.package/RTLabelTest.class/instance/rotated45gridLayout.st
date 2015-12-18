tests
rotated45gridLayout
	"
	self new rotated45gridLayout.
	"
	| v shape |
	v := RTView new.
	1 to: 20 do: [ :i |
			shape := RTRotatedLabel new.
			shape text: 'Hello World'.
			shape angleInDegree: 45.
			v add: shape element.
	].
	RTGridLayout on: v elements.
	v open