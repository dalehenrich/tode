actions
setAsFixed
	self canvas 
		ifNil: [ self error: 'You should first insert the shape in the canvas before setting it as fixed'. ].
	self canvas setAsFixed: self.
	