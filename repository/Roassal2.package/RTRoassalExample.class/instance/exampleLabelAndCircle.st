sources
exampleLabelAndCircle

| v s es |
v := RTView new.

s := RTEllipse new + (RTLabel new text: #name).
s allOfSameSize.
es := s elementsOn: Collection withAllSubclasses.
es @ RTDraggable.

RTEdgeBuilder new
	view: v;
	elements: es;
	connectFrom: #superclass.
	
v addAll: es.

RTClusterLayout on: es.
^ v 