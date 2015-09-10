manPages
clshistoryManPage
  | manPage |
  manPage := TDManPage
    commandName: 'history'
    fromString:
      'NAME
  cls history - View class history

SYNOPSIS
  cls history [--hier] [( <class-name> | @<class-path> )...]

DESCRIPTION
  The `cls history` command opens a class definition window on the classes in the
  class history for the specified class.

  If no class names are specified a class definition window is opened on all classes
  in the system that have a class history (i.e., more than one class in the class 
  history).

  With the --hier option, the super and subclass hierarchy for each class in the class 
  history is displayed.

EXAMPLES
  cls --help history
  cls history 

  cls history Symbol 
  cls history Symbol MultiByteString

  cls history --hier 
  cls history --hier Symbol 

  cls history @/home/tode/aClass 
'.
  ^ manPage