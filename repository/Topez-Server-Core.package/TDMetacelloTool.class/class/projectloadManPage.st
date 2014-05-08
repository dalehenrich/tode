project
projectloadManPage
  | manPage |
  manPage := TDManPage
    commandName: 'load'
    fromString:
      'NAME
  project load - Load the Metacello project

SYNOPSIS
  project load [--no-flush] [--loads=<load-list>] <project-name>

DESCRIPTION

EXAMPLES
  project load 

'.
  ^ manPage