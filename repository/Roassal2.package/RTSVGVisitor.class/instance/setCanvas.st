visitor
setCanvas
	self canvas = nil
		ifTrue: [ self fixedEncompassingRectangle ]