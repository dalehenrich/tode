tests - frames
testParentFrame

	| f |
	self assert: b currentFrame equals: b rootFrame.

	f := b pushNewFrame.	
	self assert: b currentFrame equals: f.
	self assert: b rootFrame ~~ f.
		
	self assert: b rootFrame equals: f parentFrame.
	
	b popFrame.
	self assert: b currentFrame equals: b rootFrame.