building
setUpElements: elements

	self doActionsOnEdgesFor: elements.

	dynamicForceBasedLayout ifTrue: [ ^ self doDynamicForceBasedLayoutOn: elements ].
	
	elements do: #updateEdgesOFF.
	self hasPartition
		ifTrue: [ self processPartitions: elements ]
		ifFalse: [ layout on: elements ].
	elements do: #updateEdgesON.
	elements do: #updateConnectedEdges.
