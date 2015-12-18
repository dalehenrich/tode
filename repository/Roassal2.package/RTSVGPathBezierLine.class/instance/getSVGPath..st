as yet unclassified
getSVGPath: anEdge
	| from to mid   p realControllingElements |
	
	from := anEdge from position.
	to := anEdge to position.
	
	realControllingElements := controllingElements rtValue: anEdge.
	
	mid := from.
	p := 'M ', from x asString,' ', from y asString.
	
	
	realControllingElements allButLastDo: [ :c | 
		mid := (c position x +  ((realControllingElements after:c) position x - c position x /2))@(c position y +  ((realControllingElements after:c) position y - c position y /2)).
		p := p, ' Q ', c position x asString, ' ', c position y asString, ' ', mid x asString, ' ', mid y asString.	 	
		 ].
	
	p := p, ' Q ', realControllingElements last position x asString, ' ', realControllingElements last position y asString, ' ', to x asString, ' ', to y asString.	
	
	^ p

	