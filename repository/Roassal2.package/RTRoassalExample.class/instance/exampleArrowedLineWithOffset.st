sources
exampleArrowedLineWithOffset
| v e1 e2 e3 e4 line |
v := RTView new.
e1 := (RTEllipse new color: (Color blue alpha: 0.4); size: 20) element.
e2 := (RTEllipse new color: (Color red alpha: 0.4); size: 20) element.
e3 := (RTEllipse new color: (Color yellow alpha: 0.4); size: 20) element.
e4 := (RTEllipse new color: (Color green alpha: 0.4); size: 20) element.
e1 @ RTDraggable.
e2 @ RTDraggable.
e3 @ RTDraggable.
e4 @ RTDraggable.

v add: e1; add: e2; add: e3; add: e4.

line := RTArrowedLine new color: Color red.
line withOffsetIfMultiple.
v add: (line  edgeFrom: e1 to: e2).
v add: (line  edgeFrom: e2 to: e1).
v add: (line  edgeFrom: e1 to: e2).

v add: (line  edgeFrom: e2 to: e2).

v add: (line  edgeFrom: e3 to: e4).

RTCircleLayout on: (Array with: e1 with: e2 with: e3 with: e4 ).

	^ v