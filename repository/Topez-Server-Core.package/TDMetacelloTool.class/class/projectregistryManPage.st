project
projectregistryManPage
  | manPage |
  manPage := TDManPage
    commandName: 'registry'
    sourceMethod: self name asString , ' class>>projectregistryManPage'
    fromString:
      'NAME
  project registry - Inspect the project registry

SYNOPSIS
  project registry 

DESCRIPTION

EXAMPLES
  project registry
'.
  ^ manPage