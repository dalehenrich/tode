tests
testAttributeAtPresent

	| g |
	g := RTGroup new.
	g attributeAt: #foo ifAbsentPut: 20.
	self assert: (g attributeAt: #foo) equals: 20.
	self assert: (g hasAttribute: #foo)