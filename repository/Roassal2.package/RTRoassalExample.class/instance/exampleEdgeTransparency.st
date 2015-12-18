sources
exampleEdgeTransparency

| v es |
v := RTView new.

es := RTEllipse new elementsOn: RTShape withAllSubclasses.
v addAll: es.
RTWeightedCircleLayout new initialRadius: 200; on: es.
RTMetricNormalizer new
	elements: es;
	normalizeSize: #numberOfMethods min: 10 max: 35 using: #sqrt;
	normalizeColor: #numberOfLinesOfCode.

RTEdge 
	buildEdgesFromObjects: RTShape withAllSubclasses 
	from: #yourself 
	toAll: #dependentClasses 
	using: (RTLine new color: (Color blue))
	inView: v.

es @ RTPopup @ RTSetEdgeAlpha.	
 
	^ v