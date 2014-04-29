manPages
methodprotocolManPage
  | manPage |
  manPage := TDManPage
    commandName: 'protocol'
    fromString:
      'NAME
  method protocol - View methods

SYNOPSIS
  method protocol <method-protocol> <method-spec>...

DESCRIPTION
  The `method protocol` command moves the specified methods to the specified method
  protocol.

EXAMPLES
  method protocol accessing Dictionary>>at:put: Dictionary>>at:
'.
  ^ manPage