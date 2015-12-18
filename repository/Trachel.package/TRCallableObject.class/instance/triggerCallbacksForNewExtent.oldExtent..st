callbacks
triggerCallbacksForNewExtent: newExtent oldExtent: oldExtent 
	self hasCallback ifFalse: [ ^ self ].
	self callbacks do: [ :c | 
		c isExtentCallback ifTrue: [ 
			c shape: self newExtent: newExtent oldExtent: oldExtent ] ]