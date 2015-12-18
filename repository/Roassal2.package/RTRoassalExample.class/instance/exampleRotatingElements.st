sources
exampleRotatingElements
| v es |
v := RTView new.
es := (RTBox new color: (Color blue alpha: 0.4); size: 30) elementsOn: (1 to: 60).
v addAll: es.

es when: TRMouseEnter do: [ :evt |  evt element trachelShape rotateByDegrees: 5. evt signalUpdate ].
es @ RTDraggable.
RTGridLayout on: es.

	^ v