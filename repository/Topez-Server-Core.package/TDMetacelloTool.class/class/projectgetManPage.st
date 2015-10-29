project
projectgetManPage
  | manPage |
  manPage := TDManPage
    commandName: 'get'
    sourceMethod: self name asString , '>>projectget'
    fromString:
      'NAME
  project get - Download configuration or baseline for the given project

SYNOPSIS
  project get <project-name>

DESCRIPTION

OPTIONS

EXAMPLES
  project get Metacello
'.
  ^ manPage