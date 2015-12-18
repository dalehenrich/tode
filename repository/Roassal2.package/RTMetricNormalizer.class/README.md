A Metric normalizer is made to assign a color, or a particular shape computed from a group of elements. Consider the following example:
-=-=-=-=-=-=-=-=-=-=-=-=
"Set here the classes you wish to visualize"
classes := Collection withAllSubclasses.

v := RTView new.
v @ RTDraggableView.
shape := RTBox new.
es := shape elementsOn: classes.
v addAll: es.

RTMetricNormalizer new
	elements: es;
	normalizeWidth: #numberOfVariables;
	normalizeHeight: #numberOfMethods;
	normalizeColor: #numberOfLinesOfCode.

RTFlowLayout on: es.

v
-=-=-=-=-=-=-=-=-=-=-=-=