layout
testTreeLayout

	| b |
	b := RTMondrianViewBuilder new.
	b nodes: (1 to: 5).
	b shape line color: Color black.
	b edges: (Array with: 1) from: #yourself toAll: (1 to: 5).
	b treeLayout. 
	b applyLayout.
	"There are 5 different position, one for each element"
	self assert: (b view elements collect: #position) asSet size = 5