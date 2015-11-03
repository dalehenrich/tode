as yet unclassified
pslistManPage
  | manPage |
  manPage := TDManPage
    commandName: 'list'
    sourceMethod: self name asString , '>>pslist'
    fromString:
      'NAME
  ps list - Open a process browser on process instances

SYNOPSIS
  ps list

DESCRIPTION
  The process browser lists each of the active processes in the image.

  Attach and Debug menu items
  ---------------------------
  One may `attach` or `debug` the selected process. Both commands brings up a debugger on the selected process.

  If `debug` is used, then the process is terminated when the debugger window is closed. If `attach` is used, 
  then the process is not terminated.

  Kill and terminate menu items
  -----------------------------
  `kill` terminates the selected process without running the ensure blocks. `terminate` terminates the selected
  process and lets the ensure blocks run.

EXAMPLES
  ps --help

  ps list
'.
  ^ manPage