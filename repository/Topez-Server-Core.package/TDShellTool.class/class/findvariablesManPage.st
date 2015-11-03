manPages
findvariablesManPage
  | manPage |
  manPage := TDManPage
    commandName: 'variables'
    sourceMethod: self name asString , '>>findvariables'
    fromString:
      'NAME
  find variables - Find references to instance, class instance and class variables

SYNOPSIS
  find variables --class=<class-name> <variable-name>...

DESCRIPTION
  The `find variables` command returns a list of method definitions that reference 
  the specified variable (instance variable, class instance variable or class 
  variable) in the specified class.

EXAMPLES
  find variables --class=TDShellTool listLimit
'.
  ^ manPage