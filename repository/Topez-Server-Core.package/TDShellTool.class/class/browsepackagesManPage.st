manPages
browsepackagesManPage
  | manPage |
  manPage := TDManPage
    commandName: 'packages'
    sourceMethod: self name asString , ' class>>browsepackagesManPage'
    fromString:
      'NAME
  browse packages - List packages

SYNOPSIS
  browse packages

DESCRIPTION
  The `browse packages` command brings up a window on the list of packages. 

EXAMPLES
  browse packages
'.
  ^ manPage