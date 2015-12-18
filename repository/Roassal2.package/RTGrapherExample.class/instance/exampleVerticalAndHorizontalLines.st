sources
exampleVerticalAndHorizontalLines

	| b ds |
	b := RTGrapher new.

	b extent: 300 @ 200.

	ds := RTDataSet new.
	ds points: (-50 to: 100 by: 0.1).
	ds y: [ :x | (0.1 * x) sin  ].
	ds noDot.
	ds interaction popupText: 'sinus'.
	ds connectColor: Color blue.
	b add: ds.

	ds := RTDataSet new.
	ds points: (-50 to: 100 by: 0.1).
	ds y: [ :x | (0.1 * x) cos  ].
	ds noDot.
	ds interaction popupText: 'cosinus'.
	ds connectColor: Color red.
	b add: ds.

	b addDecorator: RTHorizontalTickLineDecorator new.
	b addDecorator: RTVerticalTickLineDecorator new.

	b build.
	^ b view