accessing
objects: someObjectsOrABlock
	"Identify the elements we are considering for the edge building process. Note that the view has to be set beforehand."
	self assert: [ view notNil ] description: 'A view has to be set, please use #view:'.
	 
	(someObjectsOrABlock isCollection and: [ someObjectsOrABlock isSymbol not ])
		ifTrue: [ self elements: (view elementsFromModels: someObjectsOrABlock) ]
		ifFalse: [ self elements: (view elements select: [ :el | someObjectsOrABlock rtValue: el model ]) ]