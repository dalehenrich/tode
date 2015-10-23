manPages
findundeclaredManPage
  | manPage |
  manPage := TDManPage
    commandName: 'undeclared'
    sourceMethod: self name asString , ' class>>findundeclaredManPage'
    fromString:
      'NAME
  find undeclared - Find list of method definitions referencing undeclared symbols

SYNOPSIS
  find undeclared 

DESCRIPTION
  The `find undeclared` command brings up a method definition window on the
  methods that reference undeclared symbols.

EXAMPLES
  find undeclared
'.
  ^ manPage