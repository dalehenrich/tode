events
mouseMove
	"
	self new mouseMove
	"
	| c lbl |
	c := TRCanvas new.
	lbl := TRLabelShape new text: 'pos'.
	c addShape: lbl.
	
	c when: TRMouseMove do: [ :evt | lbl text: (c camera fromPixelToSpace: evt position) printString. c signalUpdate ].
	c open