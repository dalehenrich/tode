hook
doStretchHorizontal: aCollectionOfElements 
	
 	| parent parentBounds |
	aCollectionOfElements isNil ifTrue: [ ^ self "nothing to do" ].
	parent := aCollectionOfElements anyOne parent.
	parent isView ifTrue: [ ^ self "ROView does not have bounds" ].
	parentBounds := parent bounds.

	aCollectionOfElements do: [ :element | 
		element width: parentBounds width ]