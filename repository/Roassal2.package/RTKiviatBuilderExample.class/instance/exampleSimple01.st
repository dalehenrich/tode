sources
exampleSimple01

| b |
	b := RTKiviatBuilder new.
	b objects: #('ABCDEF' ' 123' '      1').
	b addMetric: #size.
	b addMetric: [ :str | (str select: #isAlphaNumeric) size ].
	b addMetric: [ :str | (str select: [ :c | c = $ ]) size ].
	b build.
	^ b view