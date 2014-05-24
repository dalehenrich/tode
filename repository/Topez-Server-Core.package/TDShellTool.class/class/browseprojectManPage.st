manPages
browseprojectManPage
  | manPage |
  manPage := TDManPage
    commandName: 'project'
    fromString:
      'NAME
  browse project - Find and vew lists of classes in a project

SYNOPSIS
  browse project <regex-pattern>...
  browse project --exact <project-name>...

DESCRIPTION
  The `browse project` command brings up a window on a list of classes defined
  in the given projects.

  With no options present, the arguments are treated as a regex pattern used 
  to match against the list of projects loaded in the image. 

  With the --exact option present, only the projects exactly matching the 
  arguments are used. 

EXAMPLES
  browse project tode rb
  browse project --exact Tode
'.
  ^ manPage