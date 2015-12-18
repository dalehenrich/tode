public-layout
move: name1 onTheRightOf: name2
	
	| g1 g2 |
	g1 := mapping at: name1. 
	g2 := mapping at: name2.
	TRConstraint move: g1 onTheRightOf: g2.
	g1 translateBy: gap @ 0