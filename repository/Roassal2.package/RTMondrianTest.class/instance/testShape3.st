tests - nodes
testShape3

	| n1 n2 |
	b shape circle.
	b node: #one forIt: [
		b shape circle.
		n1 := b node: #two ].
	n2 := b node: #three.
	
	self assert: n1 shape class == RTEllipse.
	self assert: n2 shape class == RTBox.