edges
testEdgesFromAndEdgesFromTo

	| b1 b2 m1 m2 |
	b1 := RTMondrianViewBuilder new.
	b1 nodes: (1 to: 10).
	b1 edges: (1 to: 10) from: [ :v | v // 2 ] to: #yourself.
	b1 treeLayout.
	b1 applyLayout.
	
	b2 := RTMondrianViewBuilder new.
	b2 nodes: (1 to: 10).
	b2 edgesFrom: [ :v | v // 2 ].
	b2 treeLayout.
	b2 applyLayout.
	
	"The edges are pointing to the right thing"
	self assert: b1 view edges size = 9.
	self assert: b2 view edges size = 9.	
	m1 := b1 view edges collect: [ :e | Array with: e from model with: e to model ].
	m2 := b2 view edges collect: [ :e | Array with: e from model with: e to model ].
	self assert: m1 = m2.
	
	"The position of the elements"
	m1 := b1 view elements collect: #position.
	m2 := b2 view elements collect: #position.
	self assert: m1 = m2.