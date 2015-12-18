rendering
colorShape
	self block: [ :fromPoint :toPoint | 
		| tab |
		
		tab := Array with: fromPoint.
		
		(fromPoint = toPoint) ifFalse: [
	
			1 to: (colorArray size - 1) do: [ :i |
				tab := tab copyWith: ( (i * (toPoint x - fromPoint x)/(colorArray size)) + (fromPoint x)) @ ( ((i* (fromPoint dist: toPoint)/(colorArray size)) / (fromPoint dist: toPoint) * (toPoint y - fromPoint y)) + (fromPoint y)).
			]
		].
		tab := tab copyWith: toPoint.
	 ]