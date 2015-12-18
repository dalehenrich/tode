sources
exampleMetricNormalizer
| v es |
v := RTView new.

es := RTEllipse elementsOn: RTObject withAllSubclasses.
es @ RTPopup.
v addAll: es.

RTMetricNormalizer new
	elements: es;
	normalizeColor: #numberOfLinesOfCode;
	alphaColor: 0.4;
	normalizeSize: #numberOfMethods min: 5 max: 15;
	normalizeX: #numberOfMethods min: 0 max: 300;
	normalizeY: #numberOfVariables min: 0 max: 300.

	^ v