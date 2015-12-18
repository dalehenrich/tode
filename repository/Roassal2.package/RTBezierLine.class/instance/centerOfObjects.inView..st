control points
centerOfObjects: aOneArgBlockOrValues inView: view
	"Set one control point, at the center of the elements provided as argument"
	^ self centerOfElements: [ :edge |
		aOneArgBlockOrValues isClosure
			ifTrue:  [ view elementsFromModels: (aOneArgBlockOrValues 
															value: edge from model value: edge to model) ]
			ifFalse: [ view elementsFromModels: aOneArgBlockOrValues ] ]