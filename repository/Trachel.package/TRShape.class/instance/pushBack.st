actions
pushBack
	canvas ifNil: [ self error: 'Cannot push back since the it has not been added into a view or a canvas' ]. 
	canvas pushBack: self
	
	