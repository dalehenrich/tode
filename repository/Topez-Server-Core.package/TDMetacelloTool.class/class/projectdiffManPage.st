project
projectdiffManPage
  | manPage |
  manPage := TDManPage
    commandName: 'diff'
    sourceMethod: self name asString , '>>projectdiff'
    fromString:
      'NAME
  project diff - View code differences between image and repository

SYNOPSIS
  project diff  <project-name>

DESCRIPTION

EXAMPLES
  project diff Tode
'.
  ^ manPage