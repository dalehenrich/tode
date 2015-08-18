accessing
persistentElementCache
  persistentElementCache
    ifNil: [ 
      | stack |
      persistentElementCache := IdentitySet new.
      stack := self class persistentElementCacheStack.
      stack addFirst: persistentElementCache.
      stack size > 3
        ifTrue: [ stack removeLast ] ].
  ^ persistentElementCache