browse
browseundeclaredManPage
  | manPage |
  manPage := TDManPage
    commandName: 'undeclared'
    fromString:
      'NAME
  browse undeclared - View references to undeclared symbols

SYNOPSIS
  browse undeclared 

DESCRIPTION
  The `browse undeclared` command brings up a method definition window on the
  methods that reference undeclared symbols.

EXAMPLES
  browse undeclared
'.
  ^ manPage