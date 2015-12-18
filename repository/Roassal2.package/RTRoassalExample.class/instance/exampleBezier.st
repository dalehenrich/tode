sources
exampleBezier
| v shape  edge els |
v := RTView new.
shape := RTEllipse new size: 10; color: (Color purple alpha: 0.3).
els := (shape elementsOn: (1 to: 6)) @ RTDraggable.
v addAll: els .
RTHorizontalLineLayout on: v elements.

v elements first translateBy: -50 @ 50.
v elements third translateBy: -10 @ 20.
v elements fifth translateBy: 0 @ -60.
v elements last translateBy: 150 @ 100.

edge := (RTBezierLine new controllingElements: v elements) edgeFrom: els first to: els last.
v add: edge.

	^ v