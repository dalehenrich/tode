tests
rotated90gridLayout
	"
	self new rotated90gridLayout.
	"
	| v shape |
	v := RTView new.
	1 to: 20 do: [ :i |
			shape := RTRotatedLabel new.
			shape text: 'Hello World'.
			shape angleInDegree: 90.
			v add: shape element.
	].
	RTGridLayout on: v elements.
	v open