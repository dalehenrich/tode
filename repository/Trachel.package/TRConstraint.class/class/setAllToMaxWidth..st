public - resizing
setAllToMaxWidth: shapes
	| maxWidthShape |
	maxWidthShape := shapes inject: shapes anyOne into: [ :maxS :s | 
								maxS width <= s width
										ifTrue: [ s ] ifFalse: [ maxS ] ].
	self useWidthOf: maxWidthShape for: shapes