sources
examplePopupOnCurves

	| b ds |
	b := RTGrapher new.

	b extent: 300 @ 200.

	ds := RTDataSet new.
	ds points: (0 to: 100 by: 0.1).
	ds y: [ :x | (0.1 * x) sin  ].
	ds noDot.
	ds interaction popupText: 'sinus'.
	ds connectColor: Color blue.
	b add: ds.

	ds := RTDataSet new.
	ds points: (0 to: 100 by: 0.1).
	ds y: [ :x | (0.1 * x) cos  ].
	ds noDot.
	ds interaction popupText: 'cosinus'.
	ds connectColor: Color red.
	b add: ds.

	b build.
	^ b view 