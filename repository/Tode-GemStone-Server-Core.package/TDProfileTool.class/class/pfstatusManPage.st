pf
pfstatusManPage
  | manPage |
  manPage := TDManPage
    commandName: 'status'
    fromString:
      'NAME
  pf status - Generate a string-based status from sampled data

SYNOPSIS
  pf status

DESCRIPTION
 
EXAMPLES
  pf status
'.
  ^ manPage