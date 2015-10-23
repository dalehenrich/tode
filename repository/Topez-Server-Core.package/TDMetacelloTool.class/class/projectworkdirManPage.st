project
projectworkdirManPage
  | manPage |
  manPage := TDManPage
    commandName: 'workdir'
    sourceMethod: self name asString , ' class>>projectworkdirManPage'
    fromString:
      'NAME
  project workdir - Create working directory for project

SYNOPSIS
  project workdir 

DESCRIPTION

EXAMPLES
  project workdir
'.
  ^ manPage