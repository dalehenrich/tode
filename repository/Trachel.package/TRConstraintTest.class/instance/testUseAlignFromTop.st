aligning
testUseAlignFromTop
	"
	TRCanvas new addShape: shape1; addShape: shape2; yourself
	"
	TRConstraint use: shape1 alignFromTop: (Array with: shape1 with: shape2).
	self assert: shape1 position equals: 0 @ 0.
	self assert: shape2 position equals: 0 @ -20.