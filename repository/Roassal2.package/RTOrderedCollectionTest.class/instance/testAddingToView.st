tests
testAddingToView

	| v c |
	v := RTView new.
	
	c := RTOrderedCollection new.
	c viewToUpdate: v.
	c shape
		rectangle size: 10; 
		color: (Color blue alpha: 0.4).
		
	self assert: v numberOfElements equals: 0.
	
	c addAll: (1 to: 20).
	self assert: v numberOfElements equals: 20.
	v