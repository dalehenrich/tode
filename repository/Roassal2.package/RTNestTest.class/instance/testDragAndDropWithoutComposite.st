composed shape
testDragAndDropWithoutComposite
	| v shape es outer  inner |
	v := RTView new.
	shape := RTBox new.
	
	es := shape elementsOn: #(1).
	v addAll: es.
	outer := es anyOne.
	
	RTNest new
		for: es
		add: [ :group :model | 
			inner := (RTBox new color: Color blue) elementOn: 'hello'.
			group add: inner ].
		
	self assert: outer position equals: 0 @ 0.
	self assert: inner position equals: 0 @ 0.	
		
	outer translateBy: 5 @ 5.
	self assert: outer position equals: 5 @ 5.
	self assert: inner position equals: 5 @ 5.	
	
	
	