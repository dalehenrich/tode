A RTRotatedLabel describes rotated labels.

| v shape es |
v := RTView new.
shape := RTRotatedLabel new text: [ :c | 'Class ', c name ]; angleInDegree: [ :c | c numberOfMethods \\ 360 ].
es := shape elementsOn: Collection withAllSubclasses.
RTGridLayout on: es.
v addAll: es.
v open