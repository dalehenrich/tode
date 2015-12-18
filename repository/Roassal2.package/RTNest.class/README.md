A RTNest is about nesting a group of objects in an element, typically located below.

Here is an example:
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
| v  es |
v := RTView new.
es := RTBox elementsOn: RTShape withAllSubclasses.

v addAll: es.

RTNest new
	for: es
	add: [ :group :model | 
		group addAll: ((RTBox new color: Color blue) elementsOn: model rtmethods).
		RTGridLayout on: group.
	].

RTFlowLayout new on: es.
es @ RTPopup @ RTDraggable.
v
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=