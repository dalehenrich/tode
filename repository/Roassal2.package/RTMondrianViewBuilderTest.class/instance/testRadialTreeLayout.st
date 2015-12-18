layout
testRadialTreeLayout
	| b |
	b := RTMondrianViewBuilder new.
	b shape rectangle.
	b nodes: (1 to: 5).
	b radialTreeLayout.
	b applyLayout