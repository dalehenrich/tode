cpu
cpustopManPage
  | manPage |
  manPage := TDManPage
    commandName: 'stop'
    sourceMethod: self name asString , '>>cpustop'
    fromString:
      'NAME
  cpu stop - Answer elapsed cpu time  in milliseconds since `cpu start` command executed

SYNOPSIS
  cpu stop

DESCRIPTION
 
EXAMPLES
  cpu stop
'.
  ^ manPage