tests
testLeaf

	self assert: (quad leaf ifTrue: [quad nodes allSatisfy: [ :e | e isNil ] ]
							ifFalse: [ quad nodes anySatisfy: [ :e | self isTrueLeaf: e ] ] )