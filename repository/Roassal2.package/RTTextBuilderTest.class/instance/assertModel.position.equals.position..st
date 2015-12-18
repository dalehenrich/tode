asserting
assertModel: anObject1 position: aSymbol1 equals: anObject2 position: aSymbol2 
	| position1 position2 |
	position1 := aSymbol1 cull: (self encompassingRectangleFromModel: anObject1).
	position2 := aSymbol2 cull: (self encompassingRectangleFromModel: anObject2).
	self assert: (((position1 isNumber) and: [ position2 isNumber ])
					or: [ (position1 isPoint) and: [ position2 isPoint ] ]).
	position1 isNumber
		ifTrue: [ self assert: (position1 - position2) abs <= 1 ]
		ifFalse: [ self assert: (position1 - position2) abs <= (1 @ 1) ].