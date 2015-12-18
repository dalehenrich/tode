public
withAll: aNodeCollection origin: aPoint corner: anotherPoint

	| dx dy root |

	dx := anotherPoint x - aPoint x.
	dy := anotherPoint y - aPoint y.


	(dx closeTo: dy ) ifTrue: [ root := self new.
										root origin: aPoint;
											corner: anotherPoint.
										aNodeCollection do: [ :e | root add: e ].
										^ root ] .
	
	dx > dy ifTrue: [ ^ self withAll: aNodeCollection origin: aPoint corner: anotherPoint x @ (aPoint y + dx) ].
	dy > dx ifTrue: [ ^ self withAll: aNodeCollection origin: aPoint corner: (aPoint x + dy) @ anotherPoint y ] .