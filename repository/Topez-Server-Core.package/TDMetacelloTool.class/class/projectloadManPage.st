project
projectloadManPage
  | manPage |
  manPage := TDManPage
    commandName: 'load'
    fromString:
      'NAME
  project load - Load the Metacello project

SYNOPSIS
  project load [--loads=<load-expression>]
               [--no-flush] [--no-get]
               [ (--baseline | --configuration --version=<version> ) ]
               [--repository=<repository-reference>]
               [--onConflict=useNew|useExisting]
               [--onDowngrade=useNew|useExisting]
               [--onLock=break|honor]
               [--onUpgrade=useNew|useExisting]
               [--ignoreImage] [--silently]
               [--cacheRepository=@<repository-reference>]
               [--repositoryOverrides=@<repository-reference>]
               [--deploy=auto|bulk|none]
               <project-name>

DESCRIPTION

EXAMPLES
  project load 

'.
  ^ manPage