callbacks
testScale
	| callback t |
	callback := TRCameraScaleCallback new.
	t := 0.
	callback block: [ :newScale | t := t + 1 ].
	camera addCallback: callback.
	self assert: t equals: 0.
	
	camera scale: 0.5.
	self assert: t equals: 1.

	camera scale: 10.
	self assert: t equals: 2.
	
	camera scale: 11.
	self assert: t equals: 3.
