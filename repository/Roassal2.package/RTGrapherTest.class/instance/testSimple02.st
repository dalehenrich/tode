tests
testSimple02

	| ds |
	b := RTGrapher new.

	ds := RTDataSet new.
	ds points: (-100 to: 100 by: 0.1).
	ds y: [ :x | (0.1 * (x + 30)) sin  ].
	ds noDot.
	ds interaction popupText: 'sinus'.
	ds connectColor: Color blue.
	b add: ds.

	b minY: -2.
	b maxY: 2.
	b build.