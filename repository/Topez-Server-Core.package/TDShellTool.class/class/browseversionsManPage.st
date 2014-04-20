browse
browseversionsManPage
  | manPage |
  manPage := TDManPage
    commandName: 'versions'
    fromString:
      'NAME
  browse versions - Find and view versions of a method

SYNOPSIS
  browse versions <method-spec>

DESCRIPTION
  The `browse versions` command brings up a method definition window on
  the different versions of the method that have been recorded in the image.

EXAMPLES
  browse versions `Dictionary class>>new:`
'.
  ^ manPage