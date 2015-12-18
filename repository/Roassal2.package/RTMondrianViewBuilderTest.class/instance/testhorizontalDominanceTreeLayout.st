layout
testhorizontalDominanceTreeLayout
	| b |
	b := RTMondrianViewBuilder new.
	b shape rectangle.
	b nodes: (1 to: 5).
	b horizontalDominanceTreeLayout.
	b applyLayout.
	self assert: (b view elements collect: #position) asArray equals: 
 ((Array new: 5) at: 1 put: ((7.5@7.5)); at: 2 put: ((7.5@15.5)); at: 3 put: ((7.5@23.5)); at: 4 put: ((7.5@31.5)); at: 5 put: ((7.5@39.5)); yourself)