callbacks
numberOfCallbacks
	"Return the number of callbacks registered"
	self hasCallback ifNil: [ ^ 0 ].
	^ self callbacks size