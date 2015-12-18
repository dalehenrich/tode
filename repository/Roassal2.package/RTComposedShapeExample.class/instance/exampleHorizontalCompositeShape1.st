sources
exampleHorizontalCompositeShape1
| view shape els |
view := RTView new.
shape := RTCompositeShape new
				add: (RTBox new color: Color gray; size: 20);
				add: (RTLabel new text: '+');
				horizontal;
				yourself.

els := shape elementsOn: (1 to: 20).
els @ RTDraggable.
view addAll: els.

RTGridLayout new on: els.
^ view