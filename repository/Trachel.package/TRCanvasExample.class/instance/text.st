examples
text
	"
	self new text
	"
	| c label rec |
	c := TRCanvas new.
	label := TRLabelShape new.
	rec := TRBoxShape new color: Color white.
	rec fromRectangle: label encompassingRectangle.
	c addShape: rec.
	c addShape: label.
	c open