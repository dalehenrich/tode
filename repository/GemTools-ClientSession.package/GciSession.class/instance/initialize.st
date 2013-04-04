initialization
initialize
    number := 0.
    self finalizationRegistry add: self.
    clientForwarderCache := WeakValueDictionary new