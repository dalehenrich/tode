pf
pfgatherManPage
  | manPage |
  manPage := TDManPage
    commandName: 'gather'
    sourceMethod: self name asString , ' class>>pfgatherManPage'
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