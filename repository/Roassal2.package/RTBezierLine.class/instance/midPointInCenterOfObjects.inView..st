control points
midPointInCenterOfObjects: aOneArgBlockOrValues inView: view
	"Set one control point, between the starting point and the center of all the objects provided as argument"
	^ self midPointInCenterOfElements: [ :edge |
		aOneArgBlockOrValues isClosure
			ifTrue:  [ view elementsFromModels: (aOneArgBlockOrValues 
															value: edge from model value: edge to model) ]
			ifFalse: [ view elementsFromModels: aOneArgBlockOrValues ] ]