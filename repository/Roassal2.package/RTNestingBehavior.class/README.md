A RTNestingBehavior is the root of classes to describes behavior when nesting.

Consider the following example:
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
| v  es |
v := RTView new.
es := RTBox elementsOn: (1 to: 50).
back := (RTBox new color: Color red; size: 100) element.
v add: back.
v addAll: es.

RTFlowLayout new on: es.

RTNest new
	behavior: (RTTopLeftBehavior new);
	on: back nest: es.

"behavior: (RTTopLeftBehavior new);"

es @ RTPopup @ RTDraggable.
v
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=