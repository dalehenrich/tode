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

  If the --install option is present and this command is run as a result of a project entry 
  install script, the project path of the outermost project entry (i.e., the project that 
  initiated the original install script) is used instead of the path implied by either the 
  --local or --stone options.

EXAMPLES
  project load Seaside3
  project load --basic Seaside3

'.
  ^ manPage