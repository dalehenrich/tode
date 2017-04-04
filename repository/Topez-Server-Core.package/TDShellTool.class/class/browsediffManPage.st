manPages
browsediffManPage
  | manPage |
  manPage := TDManPage
    commandName: 'diff'
    sourceMethod: self name asString , '>>browsediff'
    fromString:
      'NAME
  browse diff - View differences between two methods

SYNOPSIS
  browse diff <method-spec-1> [ <method-spec-2> ]

DESCRIPTION
  The `browse diff` command brings up a diff window showing the differences between
  the two specified methods.

  If the second method spec is _not_ supplied, then it is assumed that <method-spec-1> 
  is a session method override of a base method. The comparison will be made between the
  session method and the base method.

EXAMPLES
  browse diff TDShellTool>>findMethods: `TDShellTool class>>browse`
'.
  ^ manPage