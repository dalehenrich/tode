manPages
findpackagesManPage
  | manPage |
  manPage := TDManPage
    commandName: 'packages'
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