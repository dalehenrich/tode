cpu
cpuManPage
  | manPage |
  manPage := TDManPage
    commandName: 'cpu'
    fromString:
      'NAME
  cpu - Measure elapsed cpu time

SYNOPSIS
  cpu <command> [<args>]

DESCRIPTION
  The cpu commands provide a means to measure elapsed cpu time for tODE commands. 

  Commands:
    start  Start measuring elapsed cpu time  in milliseconds
    stop   Answer elapsed cpu time  in milliseconds since `cpu start` command executed

EXAMPLES

  cpu start
  pf stop
'.
  manPage subCommands
    at: 'start' put: self cpustartManPage;
    at: 'stop' put: self cpustopManPage;
    yourself.
  ^ manPage