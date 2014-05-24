as yet unclassified
breakclearManPage
  | manPage |
  manPage := TDManPage
    commandName: 'clear'
    fromString:
      'NAME
  break clear - Clear breakpoints

SYNOPSIS
  break clear  [<breakpoint-id>...]

DESCRIPTION
  With no arguments, the `break clear` command clears all breakpoints.

  If arguments are present, the listed breakpoint ids are cleared. The breakpoint
  id is obtained from the `break list` command.

EXAMPLES
  break --help clear
  break clear
  break clear 1 2

SEE ALSO
  break --help set
  break --help list
'.
  ^ manPage