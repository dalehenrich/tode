manPages
windowslistManPage
  | manPage |
  manPage := TDManPage
    commandName: 'list'
    fromString:
      'NAME
  windows list - 

SYNOPSIS
  windows list 

DESCRIPTION

EXAMPLES
  windows list
'.
  ^ manPage