as yet unclassified
breakenableManPage
  | manPage |
  manPage := TDManPage
    commandName: 'enable'
    sourceMethod: self name asString , ' class>>breakenableManPage'
    fromString:
      'NAME
  break enable - Enable breakpoints

SYNOPSIS
  break enable  [<breakpoint-id>...]

DESCRIPTION
  With no arguments, the `break enable` command enables all breakpoints.

  If arguments are present, the listed breakpoint ids are enabled. The breakpoint
  id is obtained from the `break list` command.

EXAMPLES
  break --help enable
  break enable
  break enable 1 2

SEE ALSO
  break --help set
  break --help list
'.
  ^ manPage