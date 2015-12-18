callbacks
triggerCallbacksForStep: aStep
	"aStep is a point that represents a translation step"
	self hasCallback ifFalse: [ ^ self ].
	self callbacks do: [ :c | 
		c isTranslationCallback ifTrue: [ 
			c shape: self step: aStep ] ]