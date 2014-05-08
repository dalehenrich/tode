commands
mpvalidateManPage
  | manPage |
  manPage := TDManPage
    commandName: 'validate'
    fromString:
      'NAME
  mp validate - Validate the project registrations

SYNOPSIS
  mp validate 

DESCRIPTION

EXAMPLES
  mp validate
'.
  ^ manPage