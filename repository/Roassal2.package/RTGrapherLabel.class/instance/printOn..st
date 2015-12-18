printing
printOn: aStream
	| x |
	aStream 
		nextPutAll: '(Score: ';
		nextPutAll: (score printShowingDecimalPlaces: 2);
		nextPutAll: ') '.
	x := min.
	[x <= max ] whileTrue: [ 
		aStream nextPutAll: (x printShowingDecimalPlaces: 2).
		aStream nextPutAll: String tab.
		x := x + step ].
	
	