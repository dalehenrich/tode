multi line
testMultiline


	| v b e |
	v := RTView new.
	b := (RTBox new color: (Color red alpha: 0.3)) element.
	e := RTLabel elementOn: 'Hello
	World
	Bonjour
	Blah
	'.
	v add: b.
	v add: e.

	RTNest new on: b nest: (Array with: e).

	self assert: (RTNest new encompassingRectangleOf: (Array with: e)) extent equals: e encompassingRectangle extent.
	
	"This has to be fixed."
	"self assert: (b encompassingRectangle extent) equals: (e encompassingRectangle extent + (10 @ 10)) "