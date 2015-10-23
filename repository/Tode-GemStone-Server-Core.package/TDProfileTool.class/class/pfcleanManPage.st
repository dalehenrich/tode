pf
pfcleanManPage
  | manPage |
  manPage := TDManPage
    commandName: 'clean'
    sourceMethod: self name asString , ' class>>pfcleanManPage'
    fromString:
      'NAME
  pf clean - Stop and clean up resources used by pf command

SYNOPSIS
  pf clean

DESCRIPTION
 
EXAMPLES
  pf clean
'.
  ^ manPage