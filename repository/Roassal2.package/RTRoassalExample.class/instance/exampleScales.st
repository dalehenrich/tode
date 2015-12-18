sources
exampleScales

| v scale width doLayout values dots |
v := RTView new.
v @ RTDraggableView.

"Linear per default"
scale := [ :x | x ].
width := 200.
doLayout := [
	RTHorizontalLineLayout new gapSize: 0; on: dots.
	RTMetricNormalizer new
		elements: dots;
		fastSmoothTranslation;
		normalizeY: #numberOfMethods min: 0 max: width negated using: scale.
		v signalUpdate ].

v addMenu: 'linear' callback: [ scale := [ :x | x ]. doLayout value ].
v addMenu: 'log' callback: [  scale := [ :x | (x + 1) log ] . doLayout value ].
v addMenu: 'square root' callback: [  scale := [ :x | x sqrt ] . doLayout value ].

values := RTObject withAllSubclasses.

dots := (RTEllipse new color: (Color blue alpha: 0.5)) elementsOn: values.
v addAll: dots.

doLayout value. 
^ v