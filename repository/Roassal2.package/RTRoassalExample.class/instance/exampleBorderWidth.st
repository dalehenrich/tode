sources
exampleBorderWidth

| v shape |
v := RTView new.

shape := RTBox new size: 50; borderColor: Color black; borderWidth: #yourself.
v addAll: (shape elementsOn: (1 to: 10)).
RTHorizontalLineLayout on: v elements.

	^ v