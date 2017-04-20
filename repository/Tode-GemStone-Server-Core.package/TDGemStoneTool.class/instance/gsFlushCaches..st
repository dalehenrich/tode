commands
gsFlushCaches: hardFlush
  ObjectLogEntry initialize.
  MCRepositoryGroup default repositoriesDo: [ :rep | rep flushCache ].
  MCDefinition clearInstances.
  MCMethodDefinition cachedDefinitions
    removeKeys: MCMethodDefinition cachedDefinitions keys.
  MCMethodDefinition shutDown.
  TDTopezServer clearPersistentElementCacheStack.
  hardFlush
    ifTrue: [ 
      MethodVersionHistory reset.
      TDTopezServer clearStaleTopezReferences.
      TDStandardTool initializeTools ]
    ifFalse: [ MethodVersionHistory uniqueInstance cleanUp ]