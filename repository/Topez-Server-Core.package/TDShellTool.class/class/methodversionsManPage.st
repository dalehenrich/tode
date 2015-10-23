manPages
methodversionsManPage
  | manPage |
  manPage := TDManPage
    commandName: 'ersions'
    sourceMethod: self name asString , ' class>>methodversionsManPage'
    fromString:
      'NAME
  method versions - Open window on method versions 

SYNOPSIS
  method versions <method-spec>...

DESCRIPTION
  The `method versions` commands opens a method version browser on the specified
  methods.

EXAMPLES
  method versions Dictionary>>at:put: 
'.
  ^ manPage