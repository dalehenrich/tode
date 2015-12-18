public - aligning
alignFromTop: shapes
	| topMostElement |
	shapes ifEmpty: [ ^ self ].
	topMostElement := shapes inject: shapes anyOne into: [ :maxS :s | 
								maxS encompassingRectangle topLeft y <= s encompassingRectangle topLeft y
										ifTrue: [ s ] ifFalse: [ maxS ] ].
	self use: topMostElement alignFromTop: shapes