as yet unclassified
breaksetManPage
  | manPage |
  manPage := TDManPage
    commandName: 'set'
    fromString:
      'NAME
  break set - Set breakpoints

SYNOPSIS
  break set ( <step-point> <method-ref>)...

DESCRIPTION
  The `break set` command defines breakpoints for the given step point in the specified
  method reference.

  The method reference may be a method specification of the form:

    Dictionary>>at:put:
    `Dicionary class>>new`

  or a path to a node returning a method. The path should be preceded by the `@` 
  character.

  The `break steps` command is used to identify the step points within a method

EXAMPLES
  break --help set
  break set 1 Dictionary>>at:put: `Dictionary class>>new`

SEE ALSO
  break --help steps
'.
  ^ manPage