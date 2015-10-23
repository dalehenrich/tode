manPages
findversionsManPage
  | manPage |
  manPage := TDManPage
    commandName: 'versions'
    sourceMethod: self name asString , ' class>>findversionsManPage'
    fromString:
      'NAME
  find versions - Find versions of a method

SYNOPSIS
  find versions <method-spec>

DESCRIPTION
  The `find versions` command brings up a method definition window on
  the different versions of the method that have been recorded in the image.

EXAMPLES
  find versions `Dictionary class>>new:`
'.
  ^ manPage