project
projectcompareManPage
  | manPage |
  manPage := TDManPage
    commandName: 'compare'
    sourceMethod: self name asString , ' class>>projectcompareManPage'
    fromString:
      'NAME
  project compare -  View differences between repository versions (git only)

SYNOPSIS
  project compare [--commit=<commitish>] <project-name>

DESCRIPTION

EXAMPLES
  project compare Tode
'.
  ^ manPage