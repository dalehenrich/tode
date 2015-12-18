tests - frames
testFramesWithNestingNesting

	b nodes: (1 to: 1) forEach: [ :nb | 
		b nodes: (2 to: 2) forEach: [ :nb2 |
		   b nodes: (3 to: 3) ] ].
	b build.
	
	"Checking the children links"
	self assert: b numberOfAllFrames equals: 3.
	self assert: b rootFrame numberOfChildrenFrames equals: 1.
	self assert: b rootFrame childrenFrames first numberOfChildrenFrames equals: 1.
	self assert: b rootFrame childrenFrames first childrenFrames first numberOfChildrenFrames equals: 0.
	
	"Checking the parent links"
	self assert: b rootFrame childrenFrames first parentFrame equals: b rootFrame.
	self assert: b rootFrame childrenFrames first childrenFrames first parentFrame equals: b rootFrame childrenFrames first.
	
	"Checking the number of elements"
	self assert: b rootFrame numberOfElements equals: 1.
	self assert: b rootFrame childrenFrames first numberOfElements equals: 1.
	self assert: b rootFrame childrenFrames first childrenFrames first numberOfElements equals: 1.
	
	"Checking the depth"
	self assert: b rootFrame depth equals: 1.
	self assert: b rootFrame childrenFrames first depth equals: 2.
	self assert: b rootFrame childrenFrames first childrenFrames first depth equals: 3.
