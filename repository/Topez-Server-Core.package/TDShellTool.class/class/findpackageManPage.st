manPages
findpackageManPage
  | manPage |
  manPage := TDManPage
    commandName: 'package'
    sourceMethod: self name asString , ' class>>findpackageManPage'
    fromString:
      'NAME
  find package - Find list of class definitions in a package

SYNOPSIS
  find package <regex-pattern>...
  find package --exact <package-name>...

DESCRIPTION
  The `find package` command brings up a window on a list of class definitions defined
  in the given packages.

  With no options present, the arguments are treated as a regex pattern used 
  to match against the list of packages loaded in the image. 

  With the --exact option present, only the packages exactly matching the 
  arguments are used. 

EXAMPLES
  find package topez-server tode
  find package --exact Topez-Server-Core
'.
  ^ manPage