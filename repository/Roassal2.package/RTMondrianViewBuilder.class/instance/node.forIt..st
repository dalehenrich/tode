adding - nodes
node: anObject forIt: aBlock
	^ (self 
		nodes: (Array with: anObject)
		forEach: [ :each | aBlock value ]) first