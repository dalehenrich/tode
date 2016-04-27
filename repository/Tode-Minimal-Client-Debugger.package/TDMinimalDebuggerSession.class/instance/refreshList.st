stack
refreshList
	| assoc |
	assoc := self client getListForClientListElement: self stackClientElement.
	self selectedFrameIndex: assoc value.
	self stackTextList: assoc key.
	self debugger updateBrowser