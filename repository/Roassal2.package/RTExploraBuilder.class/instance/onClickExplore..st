action
onClickExplore: aBlock
	self addListenerBlock: [ :el |
		el addListenerFor: TRMouseClick onDirection: #default -> #From withBlock: aBlock ].