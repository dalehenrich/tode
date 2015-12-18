accessing
level: f
	cache size >= sizeBeforeReset ifTrue: [ self resetCache ].
	^ cache at: f ifAbsentPut: [ super level: f ]