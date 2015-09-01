client element caching
flushEventCache
	"serialize eventCache
	 reset the cache
	 ship the serialized eventCache across the wire
	 handle serverEventCache"

	| eventCacheString serverEventCacheString |
	self eventCache isEmpty
		ifTrue: [ ^ self ].
	self effectiveApiVersion < '1.1.0' asMetacelloVersionNumber
		ifTrue: [ 
			"server does not support event cache"
			^ self ].
	TDShouldFlushEventCacheNotification signal
		ifFalse: [ 
			"defer flush til later event"
			^ self ].
	eventCacheString := self objectSerializer toString: self eventCache.
	self eventCache reset.
	[ 
	serverEventCacheString := self session
		receiverNB: topezServerProxy
		perform: #clientEventCache:
		withArgs: {eventCacheString}.
	self serverEventCache: (self objectSerializer fromString: serverEventCacheString) ]
		on: GciSessionNotLoggedInError
		do: [ :ignored |  ]