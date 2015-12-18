tests
testAttributeAt

	| g |
	g := RTGroup new.
	self assert: (g attributeAt: #foo ifAbsent: [10]) equals: 10.
	self deny: (g hasAttribute: #foo)