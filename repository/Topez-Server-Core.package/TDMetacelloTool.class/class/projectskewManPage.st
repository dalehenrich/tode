project
projectskewManPage
  | manPage |
  manPage := TDManPage
    commandName: 'skew'
    sourceMethod: self name asString , '>>projectskew'
    fromString:
      'NAME
  project skew - Compare and repair when SHA of clone does not match SHA loaded in image

SYNOPSIS
  project skew [--clone | --diff | --save ] <project-name>

DESCRIPTION

EXAMPLES
  project skew Tode
'.
  ^ manPage