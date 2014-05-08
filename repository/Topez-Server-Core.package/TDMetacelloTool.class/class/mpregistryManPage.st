commands
mpregistryManPage
  | manPage |
  manPage := TDManPage
    commandName: 'registry'
    fromString:
      'NAME
  mp registry - Inspect the project registry

SYNOPSIS
  mp registry 

DESCRIPTION

EXAMPLES
  mp registry
'.
  ^ manPage