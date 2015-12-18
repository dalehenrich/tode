hook
doStretchVertical: aCollectionOfElements 

 	| parent parentBounds |
	aCollectionOfElements isEmpty ifTrue: [ ^ self "nothing to do" ].
	parent := aCollectionOfElements anyOne parent.
	parent isView ifTrue: [ ^ self "ROView does not have bounds" ].
	parentBounds := parent bounds.

	aCollectionOfElements do: [ :element | 
		element height: (parentBounds height) ]