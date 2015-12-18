sources
exampleDynamicChart
| b n |
	b := RTKiviatBuilder new.

	n := RTMultiLinearColorForIdentity new objects: (b objects).
	b shape circle color: [ :value | n rtValue: value kiviatNode named]; size: 10.


    b addMetric: [ :v | v first ] max: 100.
    b addMetric: [ :v | v second ] max: 100.
    b addMetric: [ :v | v third ] max: 100.
    b addMetric: [ :v | v fourth ] max: 100.
    b addMetric: [ :v | v fifth ] max: 100.

    b activatePolygons.
    b build.

    b view addMenu: '+1' callback: [
    b addDynamicObject: ((1 to: 5) collect: [ :i | 100 atRandom ]) ].
    b view addMenu: 'clean' callback: [ b  clean ].
	^ b view