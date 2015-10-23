project
projectsummaryManPage
  | manPage |
  manPage := TDManPage
    commandName: 'summary'
    sourceMethod: self name asString , '>>projectsummary'
    fromString:
      'NAME
  project summary - View report of changed packages and methods

SYNOPSIS
  project summary

DESCRIPTION
  The `project summary` command brings up a list of changed packages and methods. 

EXAMPLES
  project summary
'.
  ^ manPage