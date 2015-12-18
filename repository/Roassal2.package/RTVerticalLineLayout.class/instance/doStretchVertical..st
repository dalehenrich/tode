hook
doStretchVertical: aCollectionOfElements 

 	| parent parentBounds addedHeight parentBoundsHeight runningIndex newHeight |

	aCollectionOfElements isEmpty ifTrue: [ ^ self "nothing to do" ].
	parent := aCollectionOfElements anyOne parent.
	parent isView ifTrue: [ ^ self "ROView does not have bounds" ].
	parentBounds := parent bounds.

	addedHeight := aCollectionOfElements 
		inject: 0
		into: [ :m :el | m + el height ].

	parentBoundsHeight := parentBounds height.
	"parentBoundsHeight := parentBoundsHeight - ((aCollectionOfElements size - 1) * verticalGap) - (2 * verticalOutGap)."
	
	runningIndex := 0.
	parentBounds height > addedHeight
		ifTrue: [ aCollectionOfElements do: [ :element | 
						newHeight := (element height * parentBoundsHeight / addedHeight) asInteger.
						element height: newHeight.
						runningIndex := runningIndex + newHeight + verticalGap ] ]
