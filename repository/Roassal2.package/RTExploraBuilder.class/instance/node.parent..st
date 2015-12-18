adding
node: anObject parent: element
	| node |
	node := self buildNode: anObject parent: element.
	nodes add: node.
	^ node.