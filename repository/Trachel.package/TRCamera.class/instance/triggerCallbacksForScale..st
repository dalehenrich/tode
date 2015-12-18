callbacks
triggerCallbacksForScale: aScaleFactor
	callbacks ifNil: [ ^ self ].
	callbacks do: [ :c | 
		c isCameraScaleCallback ifTrue: [ 
			c scaleChanged: aScaleFactor ] ]