project
projectlistManPage
  | manPage |
  manPage := TDManPage
    commandName: 'list'
    sourceMethod: self name asString , '>>projectlist'
    fromString:
      'NAME
  project list - List Metacello projects

SYNOPSIS
  project list [--inspect|-i] [--all] [<project-pattern>]...

DESCRIPTION
  The `project list` command brings up a window on the list of Metacello projects. 

  By default, several ConfigurationOfGLASS projects that have 
  been subsumed by BaselineOFGLASS1 are filtered out of the
  list. The --all option lists all projects registered in the 
  image.

EXAMPLES
  project list
  project list --all
'.
  ^ manPage