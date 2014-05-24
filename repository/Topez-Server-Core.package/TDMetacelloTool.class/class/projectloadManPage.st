project
projectloadManPage
  | manPage |
  manPage := TDManPage
    commandName: 'load'
    fromString:
      'NAME
  project load - Load the Metacello project

SYNOPSIS
  project load [--loads=<load-expression>] \
               [--no-flush] [--no-get] \
               [ (--baseline | --configuration --version=<version> ) ] \
               [--repository=<repository-reference>] \
               [--onConflict=useIncoming|useExisting] \
               [--onDowngrade=useIncoming|useExisting] \
               [--onLock=break|honor] \
               [--onUpgrade=useIncoming|useExisting] \
               [--ignoreImage] [--silently] \
               [--cacheRepository=@<repository-reference>] \
               [--repositoryOverrides=@<repository-reference>] \
               <project-name>

DESCRIPTION

EXAMPLES
  project load 

'.
  ^ manPage