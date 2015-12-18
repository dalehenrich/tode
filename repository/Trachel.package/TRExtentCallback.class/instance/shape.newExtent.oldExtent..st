actions
shape: aTRShape newExtent: newExtent oldExtent: oldExtent
	^ (oldExtent x = 0 or: [ oldExtent y = 0 ]) 
		ifTrue: [ self
						shape: aTRShape
						ratio: 0  ]
		ifFalse: [ self
						shape: aTRShape
						ratio: newExtent / oldExtent ]
					