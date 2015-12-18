testing
isExpanded
	" Tests if the node is expanded in all its possible directions "
	^ (expanded isEmpty) ifTrue: [ false ] ifFalse: [ expanded reduce: [ :x :y | x & y ] ]