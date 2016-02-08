gs
gsflushCachesManPage
  | manPage |
  manPage := TDManPage
    commandName: 'flushCaches'
    sourceMethod: self name asString , '>>gsflushCaches'
    fromString:
      'NAME
  gs flushCaches - Flush GLASS/GsDevKit caches

SYNOPSIS
  gs flushCaches 
         
DESCRIPTION
  Run the following exppressions to clear the "standard gemstone caches":

    ObjectLogEntry initialize.
    MCRepositoryGroup default repositoriesDo: [ :rep | rep flushCache ].
    MCDefinition clearInstances.
    MCMethodDefinition cachedDefinitions
      removeKeys: MCMethodDefinition cachedDefinitions keys.
    MCMethodDefinition shutDown.
    MethodVersionHistory uniqueInstance cleanUp.
    TDTopezServer clearPersistentElementCacheStack

OPTIONS

EXAMPLES
  gs flushCaches
'.
  ^ manPage