tests
testWithTwoInnerNodes

	| view el shape innerElement innerElement2 |
	view := RTView new.
	el := (RTBox new width: 80; height: 40; color: (Color purple alpha: 0.3)) element.
	el translateTo: 100 @ 50.
	shape := RTBox new color: (Color red alpha: 0.3).
	innerElement := shape element.
	innerElement2 := shape element.
	
	view add: innerElement.
	view add: innerElement2.
	
	RTNest
		new 
		layout: RTGridLayout new;
		on: el nest: (Array with: innerElement with: innerElement2).
		
	view add: el.
	
	self assert: el position = (100 @ 50).

	self assert: el trachelShape width = 25.
	self assert: el trachelShape height = 15.
	
	self assert: (innerElement2 position - innerElement position) = (10 @ 0) 
	