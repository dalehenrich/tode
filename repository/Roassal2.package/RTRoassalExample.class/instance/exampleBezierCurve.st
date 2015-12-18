sources
exampleBezierCurve

"Moving each extremity will reposition the control points"		
| v e1 e2 l s p1 p2 | 
v := RTView new.

e1 := (RTEllipse new size: 15; color: (Color blue alpha: 0.4)) element.
e2 := (RTEllipse new size: 15; color: (Color blue alpha: 0.4)) element.

e1 @ RTDraggable.
e2 @ RTDraggable.

e2 translateBy: -150 @ 150.

p1 := RTBox element.
p2 := RTBox element.
p1 translateTo: (e2 position x + e1 position x / 2) @ e1 position y.
p2 translateTo: (e2 position x + e1 position x / 2) @ e2 position y.

"It is not necessary to add the control points to the view"
"v add: p1.
v add: p2."

s := RTBezierLine new.
s controllingElements: (Array with: p1 with: p2 ).
l := s edgeFrom: e1 to: e2.

e1 trachelShape addCallback: 
	(TRTranslationCallback block: [ :shape :step | 
		p1 translateTo: (e2 position x + e1 position x / 2) @ e1 position y.
		p2 translateTo: (e2 position x + e1 position x / 2) @ e2 position y ]).
e2 trachelShape addCallback: 
	(TRTranslationCallback block: [ :shape :step | 
		p1 translateTo: (e2 position x + e1 position x / 2) @ e1 position y.
		p2 translateTo: (e2 position x + e1 position x / 2) @ e2 position y ]).


v add: e1.
v add: e2.

v add: l.

	^ v