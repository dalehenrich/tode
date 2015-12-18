action
onLeftClickExplore: aBlock edges: edgeDirection direction: directionName
	self addListenerBlock: [ :el |
		el addListenerFor: TRMouseLeftClick onDirection: directionName -> edgeDirection withBlock: aBlock ]