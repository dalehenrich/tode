tests
testVerticalOrthogonal
	"The default is a straight line"
	| lineShape edge |
	lineShape := RTMultiLine new.
	lineShape orthoVertical.
	edge := lineShape edgeFrom: e1 to: e2.
	v add: edge.
	self assert: v canvas numberOfShapes equals: 3