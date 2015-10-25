manPages
clsremoveManPage
  | manPage |
  manPage := TDManPage
    commandName: 'remove'
    sourceMethod: self name asString , '>>clsremove'
    fromString:
      'NAME
  cls remove - Remove classes

SYNOPSIS
  cls remove ( <class-name> | @<class-path> )...

DESCRIPTION
  The `cls remove` removes the specified class from the system.

EXAMPLES
  cls --help remove
  cls remove TDShellTool TDTestTool
  cls remove @/home/tode/shellToolClass TDTestTool
'.
  ^ manPage