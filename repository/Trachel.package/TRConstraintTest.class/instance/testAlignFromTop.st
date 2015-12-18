aligning
testAlignFromTop
	"
	TRCanvas new addShape: shape1; addShape: shape2; yourself
	"
	TRConstraint alignFromTop: (Array with: shape1 with: shape2).
	self assert: shape1 position equals: 0 @ 20.
	self assert: shape2 position equals: 0 @ 0.