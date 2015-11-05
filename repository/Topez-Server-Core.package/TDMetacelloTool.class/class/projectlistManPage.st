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

  The typeface in the project list has the following meanings:
    - italic/underlined is installed (that is, the project is present on the local 
      disk and registered in image), but the code is not loaded 
    - bold is "active" and loaded; "active" and loaded projects are sorted to the 
      top of the project list. An unloaded project may be "active" and sorted to 
      top of project list. 
    - normal font is loaded (that is, the Smalltalk code was filed into the Stone)
    - Asterisk * means the project is dirty in the image - the project has one or 
      more modified packages.
    - Plus + means dirty disk for git
    - Bar | means the project is locked

  By default, several ConfigurationOfGLASS projects that have 
  been subsumed by BaselineOFGLASS1 are filtered out of the
  list. The --all option lists all projects registered in the 
  image.

EXAMPLES
  project list
  project list --all
'.
  ^ manPage