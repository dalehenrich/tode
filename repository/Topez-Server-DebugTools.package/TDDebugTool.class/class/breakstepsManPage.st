as yet unclassified
breakstepsManPage
  | manPage |
  manPage := TDManPage
    commandName: 'steps'
    fromString:
      'NAME
  break steps - List step points for a method

SYNOPSIS
  break steps <method-ref>...

DESCRIPTION
  The `break steps` command opens a window that displays the step points for the 
  specified method.

  The method reference may be a method specification of the form:

    Dictionary>>at:put:
    `Dicionary class>>new`

  or a path to a node returning a method. The path should be preceded by the `@` 
  character.

EXAMPLES
  break --help steps
  break steps Dictionary>>at:put: `Dictionary class>>new`

SEE ALSO
  break --help set
'.
  ^ manPage