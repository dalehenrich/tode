as yet unclassified
gsFlushCaches
  ObjectLogEntry initialize.
  MCRepositoryGroup default repositoriesDo: [ :rep | rep flushCache ].
  MCDefinition clearInstances.
  MCMethodDefinition cachedDefinitions
    removeKeys: MCMethodDefinition cachedDefinitions keys.
  MCMethodDefinition shutDown.
  MethodVersionHistory uniqueInstance cleanUp