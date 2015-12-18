computing
focus: element
	| oldPath |
	oldPath := self sbpath: element.
	oldPath ifNil: [ self fadeElements: element view elements ]
	ifNotNil: [
		self fadeElements: oldPath ].
	oldPath := self path: element.
	self sbpath: element put: oldPath.
	self restoreElements: oldPath.
	
	