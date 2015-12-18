composed shape
testDragAndDrop
	| v shape es outer  inner |
	v := RTView new.
	shape := RTCompositeShape new.
	shape add: RTBox new.
	shape add: RTBox new.
	
	es := shape elementsOn: #(1).
	v addAll: es.
	outer := es anyOne.
	
	RTNest new
		for: es
		inShape: #first
		add: [ :group :model | 
			inner := (RTBox new color: Color blue) elementOn: 'hello'.
			group add: inner ].
		
	self assert: outer position equals: 0 @ 2.
	self assert: inner position equals: 0 @ 0.	
		
	outer translateBy: 5 @ 5.
	self assert: outer position equals: 5 @ 7.0.
	self assert: inner position equals: 5 @ 5.	
	
	
	