stack
refreshList
	| assoc |
	assoc := self client getListForClientListElement: self clientElement.
	self session selectedFrameIndex: assoc value.
	self session stackTextList: assoc key.
	self debugger updateBrowser