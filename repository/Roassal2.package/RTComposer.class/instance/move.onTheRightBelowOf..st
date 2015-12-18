public-layout
move: name1 onTheRightBelowOf: name2
	
	| g1 g2 |
	g1 := mapping at: name1. 
	g2 := mapping at: name2.
	TRConstraint move: g1 onTheRightBelowOf: g2.
	g1 translateBy: 0 @ gap