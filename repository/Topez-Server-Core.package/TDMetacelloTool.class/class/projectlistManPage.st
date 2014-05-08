project
projectlistManPage
  | manPage |
  manPage := TDManPage
    commandName: 'list'
    fromString:
      'NAME
  project list - List Metacello projects

SYNOPSIS
  project list [--inspect|-i] [<project-pattern>]...

DESCRIPTION
  The `project list` command brings up a window on the list of Metacello projects. 

EXAMPLES
  project list
'.
  ^ manPage