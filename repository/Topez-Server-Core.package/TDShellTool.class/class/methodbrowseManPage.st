manPages
methodbrowseManPage
  | manPage |
  manPage := TDManPage
    commandName: 'browse'
    sourceMethod: self name asString , ' class>>methodbrowseManPage'
    fromString:
      'NAME
  method browse - View methods

SYNOPSIS
  method browse <method-spec>...

DESCRIPTION
  The `method browse` command brings up a method definition window on the
  specified methods.

EXAMPLES
  method browse Dictionary>>at:put: `Dictionary class>>new:`
'.
  ^ manPage