sources
exampleDragAndDrop01

| v e1 e2 |
v := RTView new.

e1 := (RTBox new size: 10; color: Color gray) element. 
e2 := (RTEllipse new size: 30; color: Color blue) element.
e1 @ RTDraggable.

e1 translateTo: 50 @ 50.
v add: e1.
v add: e2.

e2 @ (RTDragAndDroppable new 
			host: e1;
			do: [ :fromElement :toElement | 
				| newElement alreadyNested |
				newElement := (RTBox new size: 20) element.
				v add: newElement.
				alreadyNested := toElement nestedElements.
				toElement unbindNestedElements.
				RTNest new
					layout: RTGridLayout new;
					on: toElement nest: alreadyNested, (Array with: newElement) ]).

	^ v