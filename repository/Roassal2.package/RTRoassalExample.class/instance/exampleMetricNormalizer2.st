sources
exampleMetricNormalizer2

| v es |
v := RTView new.

es := RTEllipse new color: Color blue; elementsOn: (Collection withAllSubclasses).
es @ RTPopup.
v addAll: es.
RTMetricNormalizer new
	elements: es;
	alphaColor: 0.3;
	normalizeSize: #numberOfVariables min: 5 max: 20;
	normalizePosition: [ :aClass | aClass numberOfLinesOfCode @ aClass numberOfMethods ] min: 0 @ 0  max: 300 @ -300.

	^ v