stack
initialStackFrameIndex
	^ self stackClientElement clientElement firstList value ifNil: [ 1 ]