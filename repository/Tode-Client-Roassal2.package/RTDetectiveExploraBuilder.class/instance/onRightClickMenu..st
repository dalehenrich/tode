action
onRightClickMenu: actions
	self addListenerBlock: [ :el |
		el addListenerFor: TRMouseRightClick actions: actions ]
