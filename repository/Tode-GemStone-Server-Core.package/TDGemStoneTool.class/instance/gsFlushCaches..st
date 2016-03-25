as yet unclassified
gsFlushCaches: hardFlush
  ObjectLogEntry initialize.
  MCRepositoryGroup default repositoriesDo: [ :rep | rep flushCache ].
  MCDefinition clearInstances.
  MCMethodDefinition cachedDefinitions
    removeKeys: MCMethodDefinition cachedDefinitions keys.
  MCMethodDefinition shutDown.
  TDTopezServer clearPersistentElementCacheStack.
  hardFlush
    ifTrue: [ MethodVersionHistory reset ]
    ifFalse: [ MethodVersionHistory uniqueInstance cleanUp ]