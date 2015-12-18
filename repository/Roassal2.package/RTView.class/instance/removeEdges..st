adding - removing
removeEdges: someEdges
	someEdges do: #remove

	"In case we are trying to remove everything, as it may happen with the cachetor"
"	(someEdges asArray = edges asArray) ifTrue: [ 
		edges := OrderedCollection new. 
		self canvas resetLineShapes. 
		^ self ].
"	
"	edges := edges copyWithoutAll: someEdges.
	self canvas removeShapes: (someEdges collect: #trachelShape).
"
