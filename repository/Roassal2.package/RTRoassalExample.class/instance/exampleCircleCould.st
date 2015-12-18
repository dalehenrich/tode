sources
exampleCircleCould

| v |
"The GlobalBuilder allow you to normalize the size or the colors across a number of elements. Consider the example:"
v := RTView new.
v addAll: ((RTEllipse new color: (Color red alpha: 0.3)) elementsOn: Collection withAllSubclasses) @ RTPopup.
RTMetricNormalizer new
	elements: v elements;
	normalizeSize: #numberOfLinesOfCode min: 10 max: 60;
	normalizeColor: #numberOfMethods using: (Array with: Color gray with: Color red ).
RTRectanglePackLayout on: v elements.

"elements provided to #elementsToConsider: are resized and have a colors chosen between these elements."

	^ v