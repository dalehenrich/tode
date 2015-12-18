public - aligning
alignFromBottom: shapes
	| bottomMostElement |
	shapes ifEmpty: [ ^ self ].
	bottomMostElement := shapes inject: shapes anyOne into: [ :maxS :s | 
								maxS encompassingRectangle bottomLeft y >= s encompassingRectangle bottomLeft y
										ifTrue: [ s ] ifFalse: [ maxS ] ].
	self use: bottomMostElement alignFromBottom: shapes