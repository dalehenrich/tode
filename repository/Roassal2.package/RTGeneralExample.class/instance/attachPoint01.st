attachpoints
attachPoint01

| v e1 e2 l |
v := RTView new.
e1 := (RTEllipse new size: 30; color: (Color blue alpha: 0.3)) element.

e2 := (RTEllipse new size: 30; color: (Color yellow alpha: 0.3)) element.

l := (RTLine new attachPoint: RTShorterDistanceAttachPoint new) edgeFrom: e1 to: e2.
 
e1 @ RTDraggable.
e2 @ RTDraggable.

v addAll: (Array with: l with: e2 with: e1).

v open