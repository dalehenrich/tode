action
onRightClickExplore: aBlock edges: edgeDirection direction: directionName
	self addListenerBlock: [ :el |
		el addListenerFor: TRMouseRightClick onDirection: directionName -> edgeDirection withBlock: aBlock ]