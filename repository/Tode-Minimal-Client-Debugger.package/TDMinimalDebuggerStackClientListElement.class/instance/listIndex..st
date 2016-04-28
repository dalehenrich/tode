stack
listIndex: frameIndex
	| assoc |
	assoc := self client getListForClientListElement: self clientElement.
	self session selectedFrameIndex: frameIndex.
	self session stackTextList: assoc key.
	self session currentContext frameIndex ~~ frameIndex
		ifTrue: [ self stackItemSelected: frameIndex ].
	self debugger updateBrowser