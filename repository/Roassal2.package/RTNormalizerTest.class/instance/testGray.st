gray color
testGray

	| n es v c1 c2 |
	v := RTView new.
	es := RTBox elementsOn: (0 to: 255).
	v addAll: es.
	
	n := RTGrayLinearColor new.
	n command: #yourself.
	n scope: (0 to: 255).
	
	self assert: (n rtValue: es first model) = Color white.
	c1 := n rtValue: (es at: 100) model.
	c2 := Color r: 0.612 g: 0.612 b: 0.612 alpha: 1.0.
	self assert:  (c1 red closeTo: c2 red).
	self assert:  (c1 green closeTo: c2 green).
	self assert:  (c1 blue closeTo: c2 blue).