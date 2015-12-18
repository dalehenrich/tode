control points
getControllingElementsFromFollowFor: anEdge using: followBlock
	| l1 l2 |
	l1 := self getFollowersOf: anEdge from using: followBlock.
	l2 := self getFollowersOf: anEdge to using: followBlock.
	l2 ifEmpty: [ ^ l1 ].
	l1 ifEmpty: [ ^ l2 ].
	^ l1 , l2 reversed allButFirst