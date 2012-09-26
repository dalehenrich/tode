Private
initialize

	number := 0.
	cache := WeakValueDictionary new.
	self finalizationRegistry add: self.
	clientForwarderCache := WeakValueDictionary new.
	
