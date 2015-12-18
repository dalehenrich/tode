as yet unclassified
example01
	"
	self new example01
	"
	| builder v |
	v := RTView new.
	builder := RTShapeBuilder new.
	builder circle 
				size: 20; 
				fillColor: (RTNColorLinearNormalizer new
									context: (Collection withAllSubclasses);
									command: #numberOfMethods;
									lowColor: Color green;
									highColor: Color red);
				withText.
				
	v addAll: (builder elementsOn: Collection withAllSubclasses).
	RTCellLayout new gapSize: 1; on: v elements.
	v open