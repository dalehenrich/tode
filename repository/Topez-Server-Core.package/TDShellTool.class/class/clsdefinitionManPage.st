manPages
clsdefinitionManPage
  | manPage |
  manPage := TDManPage
    commandName: 'definition'
    sourceMethod: self name asString , ' class>>clsdefinitionManPage'
    fromString:
      'NAME
  cls definition - View and define the class

SYNOPSIS
  cls definition [( <class-name> | @<class-path> )...]

DESCRIPTION
  The `cls definition` command opens a class definition window for each of the 
  specified classes.

  If no classes are specified, the window is opened on a new class definition 
  template.

EXAMPLES
  cls --help definition
  cls definition
  cls definition ClassA ClassB
  cls definition @/home/tode/classA ClassB
'.
  ^ manPage