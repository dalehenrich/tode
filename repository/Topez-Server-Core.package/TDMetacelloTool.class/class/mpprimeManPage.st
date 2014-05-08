commands
mpprimeManPage
  | manPage |
  manPage := TDManPage
    commandName: 'prime'
    fromString:
      'NAME
  mp prime - Prime the project registry

SYNOPSIS
  mp prime [--force]

DESCRIPTION

EXAMPLES
  mp prime
'.
  ^ manPage