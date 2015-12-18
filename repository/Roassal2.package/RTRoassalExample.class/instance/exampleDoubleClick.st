sources
exampleDoubleClick

| v es |
v := RTView new.
es := (RTBox new color: Color purple; size: 25) elementsOn: (1 to: 100).
es when: TRMouseDoubleClick do: [ :e | e element trachelShape color: Color red. v signalUpdate ].
v addAll: es.
RTGridLayout on: v elements.

	^ v