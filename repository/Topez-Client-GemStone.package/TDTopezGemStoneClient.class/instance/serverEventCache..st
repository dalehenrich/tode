client element caching
serverEventCache: serverEventCache
	serverEventCache isEmpty
		ifTrue: [ ^ self ]