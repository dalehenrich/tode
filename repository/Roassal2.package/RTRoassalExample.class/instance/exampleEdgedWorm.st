sources
exampleEdgedWorm
| v es |
v := RTView new.

es := RTBox elementsOn: (1 to: 50).
v addAll: es.
es @ RTDraggable.

RTEdge buildEdgesFromObjects: (1 to: 50) from: #yourself toAll:  [:value | (Array with: value -1  with: value + 1 with: value + 2) ] inView: v.

RTForceBasedLayout on: es.
v addAnimation: (RTSpringLayoutStepping new view: v).

v @ RTDraggableView.

	^ v