sources
exampleLabels

| v es |
v := RTView new.
v @ RTDraggableView.
es := (RTEllipse new size: #numberOfMethods) elementsOn: RTObject withAllSubclasses.
v addAll: es.

es @ RTPopup @ RTLabelled @ RTDraggable.
RTFlowLayout new maxWidth: 900; gapSize: 50; on: es.


	^ v