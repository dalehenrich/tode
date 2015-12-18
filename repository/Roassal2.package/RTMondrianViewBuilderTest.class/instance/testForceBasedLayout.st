layout
testForceBasedLayout
	| b |
	b := RTMondrianViewBuilder new.
	b shape rectangle.
	b nodes: (1 to: 5).
	b forceBasedLayout.
	b applyLayout