manPages
browsepackageManPage
  | manPage |
  manPage := TDManPage
    commandName: 'package'
    sourceMethod: self name asString , ' class>>browsepackageManPage'
    fromString:
      'NAME
  browse package - Find and vew lists of classes in a package

SYNOPSIS
  browse package <regex-pattern>...
  browse package --exact <package-name>...

DESCRIPTION
  The `browse package` command brings up a window on a list of classes defined
  in the given packages.

  With no options present, the arguments are treated as a regex pattern used 
  to match against the list of packages loaded in the image. 

  With the --exact option present, only the packages exactly matching the 
  arguments are used. 

EXAMPLES
  browse package topez-server tode
  browse package --exact Topez-Server-Core
'.
  ^ manPage