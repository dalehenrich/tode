manPages
clshistoryManPage
  | manPage |
  manPage := TDManPage
    commandName: 'history'
    fromString:
      'NAME
  cls history - View class history

SYNOPSIS
  cls history ( <class-name> | @<class-path> )

DESCRIPTION
  The `cls history` command opens a class definition window on the classes in the
  class history for the specified class.

EXAMPLES
  cls --help history
  cls history ClassA 
  cls history @/home/tode/classA 
'.
  ^ manPage