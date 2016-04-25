accessing
selectedFrameIndex
	^ selectedFrameIndex ifNil: [ selectedFrameIndex := stackClientElement firstList value ]