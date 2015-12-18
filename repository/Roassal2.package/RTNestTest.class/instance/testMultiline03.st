multi line
testMultiline03


	| v b e |
	v := RTView new.
	b := (RTBox new color: (Color red alpha: 0.3)) element.
	e := RTLabel elementOn: 'Hello
	World
	Bonjour
	Blah
	'.

	RTNest new on: b nest: (RTGroup with: e).

	self assert: (RTNest new encompassingRectangleOf: (Array with: e)) extent equals: e encompassingRectangle extent.
	"self assert: (b encompassingRectangle extent) equals: (e encompassingRectangle extent + (10 @ 10)) "