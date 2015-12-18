tests
testArcShape

	| arc el |
	arc := RTArc new.
	el := arc element.
	RTView new add: el.
	el encompassingRectangle
	