browse
browsediffManPage
  | manPage |
  manPage := TDManPage
    commandName: 'diff'
    fromString:
      'NAME
  browse diff - View differences between two methods

SYNOPSIS
  browse diff <method-spec-1> <method-spec-2>

DESCRIPTION
  The `browse diff` command brings up a diff window showing the differences between
  the two specified methods.

EXAMPLES
  browse diff TDShellTool>>findMethods: `TDShellTool class>>browse`
'.
  ^ manPage