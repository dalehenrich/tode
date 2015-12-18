sources
exampleRectangleLayout

| v |
v := RTView new.
v @ RTDraggableView.
v addAll: ((RTBox new size: [ :value | value / 2 ]; borderColor: Color black) elementsOn: (1 to: 100)).
RTRectanglePackLayout new on: v elements.

	^ v