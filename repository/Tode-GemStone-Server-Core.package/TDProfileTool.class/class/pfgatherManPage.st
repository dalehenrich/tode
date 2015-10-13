pf
pfgatherManPage
  | manPage |
  manPage := TDManPage
    commandName: 'gather'
    fromString:
      'NAME
  pf gather - Analyze samples from file and produce report data structure

SYNOPSIS
  pf gather

DESCRIPTION
 
EXAMPLES
  pf gather
'.
  ^ manPage