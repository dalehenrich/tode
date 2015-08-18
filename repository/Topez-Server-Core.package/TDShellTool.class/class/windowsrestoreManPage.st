manPages
windowsrestoreManPage
  | manPage |
  manPage := TDManPage
    commandName: 'restore'
    fromString:
      'NAME
  windows restore - 

SYNOPSIS
  windows restore 

DESCRIPTION

EXAMPLES
  windows restore
'.
  ^ manPage