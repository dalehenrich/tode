private
generatorOopType
	^ generatorOopType ifNil: [ self installInteractionGenerator ]