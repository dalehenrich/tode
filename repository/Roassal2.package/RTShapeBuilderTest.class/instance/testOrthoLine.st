tests
testOrthoLine

	| v eb |
	v := RTView new.
	v addAll: (RTBox new elementsOn: (1 to: 4)).

	eb := RTEdgeBuilder new.
	eb shape orthoHorizontalLine color: Color veryLightGray.
	eb view: v.
	eb objects: (1 to: 4) from: #yourself to: [ :vv | vv - 1 ].
	self assert: (v canvas shapes noneSatisfy: [ :s | s class == TRCompositeShape ])
