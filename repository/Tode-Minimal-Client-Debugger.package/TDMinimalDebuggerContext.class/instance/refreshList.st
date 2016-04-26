response action stubs
refreshList
	| assoc |
	assoc := self session client
		getListForClientListElement: self session stackClientElement.
	self session selectedFrameIndex: (assoc value).
	self session stackTextList: assoc key.
	self session debugger updateBrowser