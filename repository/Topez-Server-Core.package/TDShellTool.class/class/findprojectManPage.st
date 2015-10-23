manPages
findprojectManPage
  | manPage |
  manPage := TDManPage
    commandName: 'project'
    sourceMethod: self name asString , '>>findproject'
    fromString:
      'NAME
  find project - Find list of class definitions in a project

SYNOPSIS
  find project <regex-pattern>...
  find project --exact <project-name>...

DESCRIPTION
  The `find project` command returns a list of class definitions defined
  in the given projects.

  With no options present, the arguments are treated as a regex pattern used 
  to match against the list of projects loaded in the image. 

  With the --exact option present, only the projects exactly matching the 
  arguments are used. 

EXAMPLES
  find project tode rb
  find project --exact Tode
'.
  ^ manPage