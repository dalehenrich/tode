action
onLeftClickServerDo: aBlock with: listBlock
	self
		addListenerBlock: [ :el | 
			el block: listBlock.
			el addListenerFor: TRMouseLeftClick do: aBlock ]