pf
pfstopManPage
  | manPage |
  manPage := TDManPage
    commandName: 'stop'
    sourceMethod: self name asString , ' class>>pfstopManPage'
    fromString:
      'NAME
  pf stop - Stop sampling

SYNOPSIS
  pf stop

DESCRIPTION
 
EXAMPLES
  pf stop
'.
  ^ manPage