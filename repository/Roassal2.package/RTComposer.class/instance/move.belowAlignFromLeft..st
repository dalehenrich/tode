public-layout
move: name1 belowAlignFromLeft: name2
	
	| g1 g2 |
	g1 := mapping at: name1. 
	g2 := mapping at: name2.
	TRConstraint move: g1 belowAlignFromLeft: g2 gap: gap.