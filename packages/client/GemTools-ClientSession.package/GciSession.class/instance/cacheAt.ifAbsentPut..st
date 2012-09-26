Public
cacheAt: anOopType ifAbsentPut: aBlock

	| object |
	object := cache
		at: anOopType getHandle
		ifAbsentPut: aBlock.
	object notNil ifTrue: [^object].
	object := aBlock value.
	cache
		at: anOopType getHandle
		put: object.
	^object.
