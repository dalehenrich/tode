window bounds
initializeWindowBounds: aBoundsDictionary
	Bounds := aBoundsDictionary.
	bounds := self offsetBounds: self windowOffset.
	self notifier changed: #bounds