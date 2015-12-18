sources
exampleRotatingLabels


	| v shape |
	v := RTView new.
	shape := RTRotatedLabel new.
	shape angleInDegree: [ :cls | cls numberOfMethods negated / 1.5 ].
	shape text: [ :cls | '                                                                                ', cls name ].
	shape color: (Color black alpha: 0.2).
	v addAll: (shape elementsOn: Collection withAllSubclasses).

	v canvas color: Color white.

	^ v