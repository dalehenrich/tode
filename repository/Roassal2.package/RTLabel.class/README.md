A RTLabel is a shape to describe textual shape.

| v shape es |
v := RTView new.
shape := RTLabel new text: [ :c | 'Class ', c name ].
es := shape elementsOn: Collection withAllSubclasses.
RTGridLayout on: es.
v addAll: es.
v open