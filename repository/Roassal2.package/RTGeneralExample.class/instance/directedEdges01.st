edges
directedEdges01
	"
	self new directedEdges01
	"

| v classesRoassal classesTrachel shape1 shape2 helpBar1 helpBar2 |
v := RTView new.
v @ RTDraggableView.

shape1 := RTEllipse new size: #numberOfMethods; color: (Color gray alpha: 0.3).
shape2 := RTEllipse new size: #numberOfMethods; color: (Color pink alpha: 0.3).
classesRoassal := shape1 elementsOn: (RTObject withAllSubclasses).
classesTrachel := shape2 elementsOn: (TRObject withAllSubclasses).

classesRoassal@ RTPopup.

classesTrachel @ RTPopup.

v addAll: classesRoassal.
v addAll: classesTrachel.

RTEdge 
	buildEdgesFromObjects: RTObject withAllSubclasses 
	from: #yourself 
	toAll: [ :c | c dependentClasses copyWithoutAll: RTObject withAllSubclasses ] 
	using: (RTDirectedLine new color: (Color blue alpha: 0.5)) inView: v.

RTHorizontalLineLayout new gapSize: 1;on: classesRoassal, classesTrachel.

helpBar1 := TRLabelShape new text: 'Dependencies between Roassal and Trachel'.
helpBar2 := TRLabelShape new text: 'down links = Roassal depends on Trachel'.
v canvas addFixedShape: helpBar1.
v canvas addFixedShape: helpBar2.
TRConstraint stick: helpBar1 above: helpBar2.
TRConstraint stickAtTheBottomOfTheWindow: helpBar2.

v open