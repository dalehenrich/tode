*topez-server-core
addToClientElementCacheFor: aTDServerStatus
  self usePersistentClientElementCache
    ifTrue: [ aTDServerStatus cacheClientElementPersistent: self ]
    ifFalse: [ aTDServerStatus cacheClientElementTransient: self ]