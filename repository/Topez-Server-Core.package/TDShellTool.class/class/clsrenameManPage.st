manPages
clsrenameManPage
  | manPage |
  manPage := TDManPage
    commandName: 'rename'
    sourceMethod: self name asString , '>>clsrename'
    fromString:
      'NAME
  cls rename - Rename classes

SYNOPSIS
  cls rename ( ( <class-name> | @<class-path> ) <new-class-name> )...

DESCRIPTION
  The `cls rename` renames the specified class to the new name.

EXAMPLES
  cls --help rename
  cls rename TDShellTool TDShellTools
  cls rename @/home/tode/shellToolClass TDShellTools
'.
  ^ manPage