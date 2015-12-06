project
projectloadManPage
  | manPage |
  manPage := TDManPage
    commandName: 'load'
    sourceMethod: self name asString , '>>projectload'
    fromString:
      'NAME
  project load - Load the Metacello project

SYNOPSIS
  project load [--loads=<load-expression>]
               [--className=<project-class-name]
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
               [--basic] [--install] [--url=<project-entry-url> [--local|--stone]]
               ( <project-name> | @<project-reference> )

DESCRIPTION

  Defaults:
    deploy      - bulk
    onConflict  - useNew
    onLock      - honor
    onDowngrade - useNew
    onUpgrade   - useNew


  If there is already a project with the same project name in your project list, the download
  will be skipped.

EXAMPLES
  project load Seaside3
  project load --basic Seaside3

'.
  ^ manPage