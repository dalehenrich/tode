project
projectunregisterManPage
  | manPage |
  manPage := TDManPage
    commandName: 'get'
    sourceMethod: self name asString , '>>projectunregister'
    fromString:
      'NAME
  project unregister - Unregister the project

SYNOPSIS
  project unregister <project-name>

DESCRIPTION

OPTIONS

EXAMPLES
  project unregister Metacello
'.
  ^ manPage