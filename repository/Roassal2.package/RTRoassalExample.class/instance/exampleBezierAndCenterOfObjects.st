sources
exampleBezierAndCenterOfObjects

| v es startingElement shape |
v := RTView new.

es := (RTEllipse new color: (Color blue alpha: 0.4); size: 15) elementsOn: (1 to: 20).
v addAll: es.
es @ RTDraggable.

"we are properly locating the nodes"
startingElement :=  (RTEllipse new color: (Color red alpha: 0.4); size: 20) element.
v add:  startingElement.
startingElement @ RTDraggable.

RTCircleLayout new initialRadius: 80; on: es.
es translateTo: 0 @ 0.

startingElement translateBy: -150 @ 0.

"Building the bezier lines"
shape := RTBezierLine new
				centerOfObjects: (1 to: 20) inView: v.
v addAll: (shape edgesFrom: startingElement toAll: es).		

	^ v