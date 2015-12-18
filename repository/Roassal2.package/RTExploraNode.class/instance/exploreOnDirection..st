action
exploreOnDirection: aDirection
	| objs objectsToAdd newNodes nodesAlreadyIn objsAlreadyIn |
	objs := ((builder nodes collect: [ :n | n element ]) asGroup) collect: [ :el | el model ].
	objectsToAdd := self expansionOnDirection: aDirection.
	objsAlreadyIn := objectsToAdd select: [ :obj | objs includes: obj ].
	objectsToAdd := objectsToAdd reject: [ :obj | objs includes: obj ].
	
	nodesAlreadyIn := (builder view elements select: [ :el | objsAlreadyIn includes: el model ])
		collect: [ :elem | elem attributes at: #node ].
	newNodes := objectsToAdd collect: [ :obj | builder node: obj parent: self ].
	
	builder lastAddedNodes: newNodes.
	
	newNodes do: [ :node |
		builder view add: node element.
		node element translateTo: self element position ].
	(builder icons) ifNotNil: [
		(newNodes select: [ :n | n isExpandable]) do: [ :node |
			builder view add: node iconOpen].
		iconOpen remove.
		builder view add: iconClose.
		].
	
	(newNodes, nodesAlreadyIn) do: [ :el |
		(aDirection value = #From)
			ifTrue: [ self connectTo: el with: builder lineShape ]
			ifFalse: [ el connectTo: self with: builder lineShape ] ].