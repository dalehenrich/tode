sources
exampleOrthoVerticalLines2

| v shape |
v := RTView new.

v addAll: ((RTEllipse new size: 20; color: (Color red alpha: 0.3)) elementsOn: (1 to: 20)).

shape := RTMultiLine new.
shape orthoVertical.
shape color: (Color blue alpha: 0.3).

RTEdge 
	buildEdgesFromObjects: (1 to: 20) from: [ :n | n // 3 ] to: #yourself using: shape inView: v.

v elements @ RTDraggable @ RTPopup.
	
RTTreeLayout on: v elements. 

	^ v