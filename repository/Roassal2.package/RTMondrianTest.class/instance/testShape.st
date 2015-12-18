tests - nodes
testShape

	| n1 n2 |
	b shape circle.
	n1 := b node: #one.
	n2 := b node: #two.
	
	self assert: n1 shape class == RTEllipse.
	self assert: n2 shape class == RTBox.