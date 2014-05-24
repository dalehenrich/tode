manPages
browsevariablesManPage
  | manPage |
  manPage := TDManPage
    commandName: 'variables'
    fromString:
      'NAME
  browse variables - Find and view references to instance, class instance and class variables

SYNOPSIS
  browse variables --class=<class-name> <variable-name>...

DESCRIPTION
  The `browse variables` command brings up a method definition window on the
  methods that reference the specified variable (instance variable, class
  instance variable or class variable) in the specified class.

EXAMPLES
  browse variables --class=TDShellTool listLimit
'.
  ^ manPage