adding
add: aNode

	|n|

	leaf ifTrue: [ x isNil ifFalse: [ (x - aNode position x) abs + (y - aNode position y) abs < 0.01 ifTrue: [ self addChild: aNode ]
																								   ifFalse: [ n := node.
																											x := nil.
																											y := nil.
																											node := nil.
																											self addChild: aNode;
																												addChild: n ] ] 
						ifTrue: [ x := aNode position x.
								y := aNode position y.
								node := aNode ] ] 
		 ifFalse: [ self addChild: aNode ] 