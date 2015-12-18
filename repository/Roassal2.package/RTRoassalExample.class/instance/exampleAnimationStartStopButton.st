sources
exampleAnimationStartStopButton

| v elements stepping |
v := RTView new.
v @ RTDraggableView.
elements := (RTEllipse new size: 20; color: (Color blue alpha: 0.3)) elementsOn: (1 to: 100).
v addAll: elements.
elements @ RTDraggable.

stepping := RTSpringLayoutStepping new view: v.
stepping addStartStopButton.
"Uncomment the next line to have the animation from the beginning"
"v addAnimation: stepping."

	^ v