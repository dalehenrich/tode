sources
exampleAnimatedDots

| v elements s |
v := RTView new.
v @ RTDraggableView.
elements := (RTEllipse new size: 20; color: (Color blue alpha: 0.3)) elementsOn: (1 to: 100).
v addAll: elements.
elements @ RTDraggable.

s := RTSpringLayoutStepping new view: v.
v addAnimation: s.

	^ v