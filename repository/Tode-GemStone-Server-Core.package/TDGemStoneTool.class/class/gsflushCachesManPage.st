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

OPTIONS

EXAMPLES
  gs flushCaches
'.
  ^ manPage