pf
pfManPage
  | manPage |
  manPage := TDManPage
    commandName: 'pf'
    fromString:
      'NAME
  pf - profile Smalltalk method execution

SYNOPSIS
  pf <command> [<args>]

DESCRIPTION
  The pf commands provides access to the ProfMonitor services.

  The <command> is the name of a specific profiling operation. 

  Commands:
    clean  Stop and clean up resources used by pf command
    gather Analyze samples from file and produce report data structure
    report Generate a string-based report from sampled data
    start  Begin sampling data
    status Status of active prof monitor
    stop   Stop sampling
    view   Open prof monitor browser

EXAMPLES
'.
  manPage subCommands
    at: 'start' put: self pfstartManPage;
    at: 'status' put: self pfstatusManPage;
    at: 'stop' put: self pfstopManPage;
    at: 'gather' put: self pfgatherManPage;
    at: 'report' put: self pfreportManPage;
    at: 'view' put: self pfviewManPage;
    at: 'clean' put: self pfcleanManPage;
    yourself.
  ^ manPage