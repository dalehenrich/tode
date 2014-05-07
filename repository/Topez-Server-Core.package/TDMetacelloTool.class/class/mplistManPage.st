commands
mplistManPage
  | manPage |
  manPage := TDManPage
    commandName: 'list'
    fromString:
      'NAME
  mp list - List Metacello projects

SYNOPSIS
  mp list

DESCRIPTION
  The `mp list` command brings up a window on the list of Metacello projects. 

EXAMPLES
  mp list
'.
  ^ manPage