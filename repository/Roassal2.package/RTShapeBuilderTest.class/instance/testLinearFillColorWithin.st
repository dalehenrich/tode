linear fill color
testLinearFillColorWithin
	| elements m |
	m := (Array with: #(0) with: #(1) with: #(2)).
	builder rectangle linearFillColor: #first within: m.
	elements := builder elementsOn: m.
	
	self assert: elements first trachelShape color red > 0.9.
	self assert: elements first trachelShape color green > 0.9.
	self assert: elements first trachelShape color blue > 0.9.	
	self assert: elements third trachelShape color = Color black.