RTGradientColoredLineExample new installTitle: 'Dependencies' 
		code:
		'| eb |
v := RTView new.

es := RTEllipse new elementsOn: RTShape withAllSubclasses, TRShape withAllSubclasses.
v addAll: es.
es @ RTDraggable.
es @ RTPopup.

eb := RTEdgeBuilder new.
eb view: v.
eb shape line color: Color black.
eb objects: RTShape withAllSubclasses from: #yourself toAll: #dependentClasses.

RTMetricNormalizer new
	elements: es;
	normalizeSize: #numberOfLinesOfCode min: 10  max: 30;
	normalizeColor: #numberOfMethods using: {Color green . Color red} using: #sqrt;
	alphaColor: 0.5.

RTForceBasedLayout new charge: -300; on: es.

v edgesDo: #remove.

eb := RTEdgeBuilder new.
eb view: v.
eb shape gradientLineFrom: Color green to: Color white.
eb objects: RTShape withAllSubclasses, TRShape withAllSubclasses from: #yourself to: #superclass.

v open.
v canvas.'