as yet unclassified
breakdisableManPage
  | manPage |
  manPage := TDManPage
    commandName: 'disable'
    sourceMethod: self name asString , ' class>>breakdisableManPage'
    fromString:
      'NAME
  break disable - Disable breakpoints

SYNOPSIS
  break disable  [<breakpoint-id>...]

DESCRIPTION
  With no arguments, the `break disable` command disables all breakpoints.

  If arguments are present, the listed breakpoint ids are disabled. The breakpoint
  id is obtained from the `break list` command.

EXAMPLES
  break --help disable
  break disable
  break disable 1 2

SEE ALSO
  break --help set
  break --help list
'.
  ^ manPage