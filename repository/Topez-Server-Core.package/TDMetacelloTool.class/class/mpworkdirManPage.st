commands
mpworkdirManPage
  | manPage |
  manPage := TDManPage
    commandName: 'workdir'
    fromString:
      'NAME
  mp workdir - Create working directory for project

SYNOPSIS
  mp workdir 

DESCRIPTION

EXAMPLES
  mp workdir
'.
  ^ manPage