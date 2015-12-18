examples
label
	"
	self new label
	"
	| c |
	c := TRCanvas new.
	c addShape: (TRLabelShape new fontSize: 5).
	c addShape: (TRLabelShape new fontSize: 25; position: 20 @ 20).
	c open