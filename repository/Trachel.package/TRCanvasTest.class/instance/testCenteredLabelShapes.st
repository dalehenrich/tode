label
testCenteredLabelShapes

	| label1 label2  |
	label1 := TRLabelShape new.
	label1 text: 'hello'.
	label1 position: 10 @ 10.

	label2 := TRLabelShape new.
	label2 text: 'hello'.
	label2 translateLeftTo: label1 encompassingRectangle leftCenter.
	
	"
	TRCanvas new addShape: label1; addShape: label2; open
	"

	self assert: label1 encompassingRectangle = label2 encompassingRectangle