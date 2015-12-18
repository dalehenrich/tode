public - nodes
nodes: objects
	| els |
	els := self elementsOn: objects.
	self currentFrame addElements: els.
	view addAll: els.
	self resetShapeBuilder.
	self resetLayoutBuilder.
	self resetInteraction.
	^ els