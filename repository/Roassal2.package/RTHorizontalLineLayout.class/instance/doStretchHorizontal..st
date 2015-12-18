hook
doStretchHorizontal: aCollectionOfElements 

 	| parent parentBounds addedWidth parentBoundsWidth runningIndex newWidth |

	aCollectionOfElements isEmpty ifTrue: [ ^ self "nothing to do" ].
	parent := aCollectionOfElements anyOne parent.
	parent isView ifTrue: [ ^ self "ROView does not have bounds" ].
	parentBounds := parent bounds.

	addedWidth := aCollectionOfElements
		inject: 0
		into: [ :m :el | m + el width ].

	parentBoundsWidth := parentBounds width.
"	parentBoundsWidth := parentBoundsWidth - ((aCollectionOfElements size - 1) * horizontalGap) - (2 * horizontalOutGap)."
	
	
	runningIndex := 0.
	parentBounds width > addedWidth
		ifTrue: [ aCollectionOfElements do: [ :element | 
						newWidth := (element width * parentBoundsWidth / addedWidth) asInteger.
						element width: newWidth.
						runningIndex := runningIndex + newWidth + horizontalGap ] ]