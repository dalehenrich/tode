sources
exampleFadingLetter

| data mousePosition shape v es |
data := (RTView rtmethods flatCollect: #getSource) copyFrom: 1 to: 1500.
data := data select: #isAlphaNumeric.
mousePosition := 250 @ 250.
shape := RTLabel new 
	colorElement: [ :anElement | 
		| d |
		d := (anElement position - mousePosition) r abs.
		d := d max: 1.
		d := (10000 / d) asInteger.
		d := d min: 256.
		Color grayScale256: d  ];
	text: [ :aChar | aChar asString ].
v := RTView new.
es := shape elementsOn: data.
v addAll: es.

RTGridLayout new gapSize: 0; on: es.

v when: TRMouseMove do: [ :evt |
	mousePosition := evt positionFromCamera.
	es updateShape.
	v signalUpdate
].

	^ v