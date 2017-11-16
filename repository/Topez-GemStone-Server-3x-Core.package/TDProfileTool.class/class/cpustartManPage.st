cpu
cpustartManPage
  | manPage |
  manPage := TDManPage
    commandName: 'start'
    sourceMethod: self name asString , '>>cpustart'
    fromString:
      'NAME
  cpu start - Start measuring elapsed cpu time in milliseconds

SYNOPSIS
  cpu start

DESCRIPTION
 
EXAMPLES
  cpu start
'.
  ^ manPage