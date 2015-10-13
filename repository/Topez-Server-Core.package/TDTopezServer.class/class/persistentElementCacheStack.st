accessing
persistentElementCacheStack
  PersistentElementCacheStack
    ifNil: [ PersistentElementCacheStack := OrderedCollection new ].
  ^ PersistentElementCacheStack