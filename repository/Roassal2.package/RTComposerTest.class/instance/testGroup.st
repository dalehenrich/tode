tests
testGroup

	| e |
	self assert: composer newElementsAsGroup isEmpty.
	self assert: composer allGroupedElements isEmpty.
	self assert: composer currentElementsAsGroup isEmpty.
	e := RTEllipse element.
	composer view add: e.
	
	self assert: composer allGroupedElements isEmpty.
	self assert: composer currentElementsAsGroup asArray equals: (Array with: e).
	self assert: composer newElementsAsGroup asArray equals: (Array with: e).
	composer group: #first.
		
	self assert: composer newElementsAsGroup isEmpty.
	self assert: composer allGroupedElements asArray equals: (Array with: e). 