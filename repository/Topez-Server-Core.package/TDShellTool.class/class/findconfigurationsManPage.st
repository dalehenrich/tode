manPages
findconfigurationsManPage
  | manPage |
  manPage := TDManPage
    commandName: 'configurations'
    fromString:
      'NAME
  find configurations - Find list of configuration definitions

SYNOPSIS
  find configurations

DESCRIPTION
  The `find configurations` returns the list of configuration definitions. 

EXAMPLES
  find configurations
'.
  ^ manPage