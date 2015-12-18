adding - removing
removeElements: someElements
	someElements do: #remove

	"In case we are trying to remove everything, as it may happen with the cachetor"
"	(someElements asArray = elements asArray) ifTrue: [ 
		self initializeContent.
		self canvas resetShapes. 
		^ self ].
"	
"	elements := elements copyWithoutAll: someElements.
	self canvas removeShapes: (someElements collect: #trachelShape).
"
