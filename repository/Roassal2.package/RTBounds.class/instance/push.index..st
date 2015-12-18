public
push: circle index: index
	| new |
	new := circles size > 0 
		ifTrue: [ RTCircleTree combine: (circles at: circles size) with: circle ] 
		ifFalse: [ circle ].
	circles add: new.
	indeces add: index.
	
	^ new.