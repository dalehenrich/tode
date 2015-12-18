basic
testCheckCanvas

	| b c |
	b := RTMondrianViewBuilder new.
	b shape label text: #asString.
	b nodes: (1 to: 100).
	b shape orthoHorizontalLine color: Color veryLightGray.
	b edgesFrom: [:x | x // 10].
	b horizontalTreeLayout layered.
	c := b view canvas.
	self assert: (c shapes noneSatisfy: [ :s | s class == TRCompositeShape ])