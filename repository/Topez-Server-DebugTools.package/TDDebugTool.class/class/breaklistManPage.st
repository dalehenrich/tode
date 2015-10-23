as yet unclassified
breaklistManPage
  | manPage |
  manPage := TDManPage
    commandName: 'list'
    sourceMethod: self name asString , ' class>>breaklistManPage'
    fromString:
      'NAME
  break list - List breakpoints

SYNOPSIS
  break list

DESCRIPTION
  The `break list` command brings up a window listing the currently defined set of 
  breakpoints.

EXAMPLES
  break --help list
  break list

SEE ALSO
  break --help set
'.
  ^ manPage