project
projectprimeManPage
  | manPage |
  manPage := TDManPage
    commandName: 'prime'
    sourceMethod: self name asString , ' class>>projectprimeManPage'
    fromString:
      'NAME
  project prime - Prime the project registry

SYNOPSIS
  project prime [--force]
  project prime <project-pattern>...

DESCRIPTION

EXAMPLES
  project prime
'.
  ^ manPage