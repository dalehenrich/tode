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
  gs flushCaches [--hard]
         
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

  With --hard option, a more thorough flus of caches is done, which may cause loss of some (non-critical) data:

    MethodVersionHistory reset  # wipe out persisten method version history

OPTIONS

EXAMPLES
  gs flushCaches
  gs flushCaches --hard
'.
  ^ manPage