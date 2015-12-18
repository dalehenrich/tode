public - resizing
setAllToMaxHeight: shapes
	| maxHeightShape |
	maxHeightShape := shapes inject: shapes anyOne into: [ :maxS :s | 
								maxS height <= s height
										ifTrue: [ s ] ifFalse: [ maxS ] ].
	self useHeightOf: maxHeightShape for: shapes