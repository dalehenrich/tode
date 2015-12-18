public - nodes
nodes: objects forEach: aOneArgBlock
	| result |
	result := self nodes: objects.
	
	result do: [ :element | 
		self pushNewFrame.
		self resetShapeBuilder.
		self resetLayoutBuilder.
		self resetInteraction.
			
		aOneArgBlock rtValue: element model.
		RTNest new
			layout: layoutBuilder layout;
			on: element nest: self currentFrame elements.
		self popFrame.
	].
	self resetShapeBuilder.
	self resetLayoutBuilder.
	self resetInteraction.
	^ result