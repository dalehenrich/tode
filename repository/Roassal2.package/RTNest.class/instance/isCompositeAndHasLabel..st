public
isCompositeAndHasLabel: backElement
	^ backElement shape class == RTCompositeShape
		and: [ backElement shape allShapes anySatisfy: [ :aShape | aShape class == RTLabel ] ]