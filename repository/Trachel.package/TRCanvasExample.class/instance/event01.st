events
event01

	"
	self new event01
	"
	| s1 s2 c |
	s1 := TRBoxShape new color: (Color blue alpha: 0.8); size: 80; strokePaint: nil.	
	s2 := TREllipseShape new size: 100; color: (Color green alpha: 0.8); strokePaint: nil.
	c := TRCanvas new.

	c addShape: s1.
	c addShape: s2.

	s1 when: TRMouseDragging do: [ :e | 
		s1 translateBy: e step.  
		e signalUpdate ].
	c open