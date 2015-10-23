manPages
findpackagesManPage
  | manPage |
  manPage := TDManPage
    commandName: 'packages'
    sourceMethod: self name asString , ' class>>findpackagesManPage'
    fromString:
      'NAME
  find packages - Find list if package definitions

SYNOPSIS
  find packages

DESCRIPTION
  The `find packages` command returns list of package definitions. 

EXAMPLES
  find packages
'.
  ^ manPage