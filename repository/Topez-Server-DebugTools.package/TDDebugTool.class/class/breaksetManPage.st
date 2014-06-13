as yet unclassified
breaksetManPage
  | manPage |
  manPage := TDManPage
    commandName: 'set'
    fromString:
      'NAME
  break set - Set breakpoints

SYNOPSIS
  break set <method-ref> <step-point>...

DESCRIPTION
  The `break set` command defines breakpoints for the given step points in the 
  specified method reference.

  The method reference may be a method specification of the form:

    Dictionary>>at:put:
    `Dicionary class>>new`

  or a path to a node returning a method. The path should be preceded by the `@` 
  character.

  The `break steps` command is used to identify the step points within a method

EXAMPLES
  break --help set
  break set Dictionary>>at:put: 2 6
  break set `Dictionary class>>new` 1

SEE ALSO
  break --help steps
'.
  ^ manPage