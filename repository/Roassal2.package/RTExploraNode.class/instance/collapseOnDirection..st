action
collapseOnDirection: aDirection
	(self isExpandedOnDirection: aDirection)
		ifTrue: [ ((self expandedNodesOnDirection: aDirection)
				reject: [ :x | x = parentNode | (x id < (self id))])
					do: [ :elem | elem collapse ].
			self setCollapsedOnDirection: aDirection ].
		self removeEdgesOnDirection: aDirection.
		(builder icons) ifNotNil: [
			iconClose remove.
			builder view add: iconOpen.
		].
		