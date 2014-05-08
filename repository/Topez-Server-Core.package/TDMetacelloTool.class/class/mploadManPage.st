commands
mploadManPage
  | manPage |
  manPage := TDManPage
    commandName: 'load'
    fromString:
      'NAME
  mp load - Load the Metacello project

SYNOPSIS
  mp load [--no-flush] [--loads=<load-list>] <project-name>

DESCRIPTION

EXAMPLES
  mp load 

'.
  ^ manPage