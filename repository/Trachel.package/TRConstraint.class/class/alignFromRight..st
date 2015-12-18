public - aligning
alignFromRight: shapes
	| rightMostElement |
	shapes ifEmpty: [ ^ self ].
	rightMostElement := shapes inject: shapes anyOne into: [ :maxS :s | 
								maxS encompassingRectangle topLeft x >= s encompassingRectangle topLeft x
										ifTrue: [ s ] ifFalse: [ maxS ] ].
	self use: rightMostElement alignFromRight: shapes