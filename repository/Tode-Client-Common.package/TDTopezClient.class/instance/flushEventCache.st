client element caching
flushEventCache
	self eventCache isEmpty
		ifTrue: [ ^ self ].
	"serialize eventCache, reset the cache, ship the serialized eventCache across the wire"