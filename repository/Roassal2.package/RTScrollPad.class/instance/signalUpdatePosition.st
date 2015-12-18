as yet unclassified
signalUpdatePosition

	| prx pry  org|

	(self movable = #isMovable) ifFalse: [ 		
		prx :=  ((self shapes bar position x)-(self shapes surroundingRectangle position x - (self shapes surroundingRectangle width/2))) / (self shapes surroundingRectangle width) * self size.
		pry := ((self shapes bar position y)-(self shapes surroundingRectangle position y - (self shapes surroundingRectangle height/2))) / (self shapes surroundingRectangle height) * self size.
				
		self shapes surroundingRectangle position: self fixedPosition.
		self shapes surroundingRectangle position: self fixedPosition.
	
		org := (self fixedPosition x - (self size / 2) )@(self fixedPosition y - (self size / 2) ).
				
		self shapes bar position: (prx + org x)@((pry + org y)).
		].
	
