callbacks
triggerRemoveCallbacks
	"aStep is a point that represents a translation step"
	self hasCallback ifFalse: [ ^ self ].
	self callbacks do: [ :c | 
		c isRemoveCallback ifTrue: [ 
			c removeShape: self ] ]