accessing
explorationStatus: aDirection
	(self isExpandableOnDirection: aDirection) ifFalse: [ ^ 'not expandable' ].
	(self isExpandedOnDirection: aDirection)
		ifTrue: [ ^ 'expanded' ]
		ifFalse: [ ^ 'not expanded' ].