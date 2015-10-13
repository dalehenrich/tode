pf
pfstopManPage
  | manPage |
  manPage := TDManPage
    commandName: 'stop'
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