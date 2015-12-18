tests - frames
testPushingNewFrame

	| f |
	f := RTMondrianFrame new.
	b pushFrame: f.
	self assert: b rootFrame ~~ b currentFrame.
	self assert: b currentFrame equals: f.