public-layout
move: name1 onTheLeftOf: name2
	
	| g1 g2 |
	g1 := mapping at: name1. 
	g2 := mapping at: name2.
	TRConstraint move: g1 onTheLeftOf: g2.
	g1 translateBy: gap negated @ 0