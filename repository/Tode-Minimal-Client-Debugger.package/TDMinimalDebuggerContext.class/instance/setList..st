response actions
setList: textList
	self session selectedFrameIndex: (self session stack indexOf: self).
	self session stackTextList: textList.
	self session debugger updateBrowser