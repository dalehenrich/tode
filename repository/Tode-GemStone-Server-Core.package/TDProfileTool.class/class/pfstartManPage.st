pf
pfstartManPage
  | manPage |
  manPage := TDManPage
    commandName: 'start'
    sourceMethod: self name asString , '>>pfstart'
    fromString:
      'NAME
  pf start - Begin sampling data

SYNOPSIS
  pf start

DESCRIPTION
 
EXAMPLES
  pf start
'.
  ^ manPage