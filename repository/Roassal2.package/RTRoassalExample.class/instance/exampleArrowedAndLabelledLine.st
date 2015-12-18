sources
exampleArrowedAndLabelledLine
| v e1 e2 l |
v := RTView new.

e1 := (RTEllipse new size: 20) elementOn: 'hello'.
e2 := (RTEllipse new size: 20) elementOn: 'world'.

e1 @ RTDraggable.
e2 @ RTDraggable.

l := RTEdge from: e1 to: e2.
l + (RTLine new color: Color red).
l + (RTSimpleArrowHead new color: Color red).

e2 translateBy: 60 @ 80.
v addAll: (Array with: e1 with: e2 with: l ).

e1 @ RTLabelled.
e2 @ RTLabelled.

"Note that the RTLabelled interaction has to be set after having added the element in the view"
l @ (RTLabelled new text: 'lining up!').

	^ v