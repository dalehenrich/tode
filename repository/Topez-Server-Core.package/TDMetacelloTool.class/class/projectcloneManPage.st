project
projectcloneManPage
  | manPage |
  manPage := TDManPage
    commandName: 'clone'
    fromString:
      'NAME
  project clone - Clone repository (github only)

SYNOPSIS
  project clone ( <project-name> | @<project-reference> )

DESCRIPTION

OPTIONS

EXAMPLES
  project clone Zinc

'.
  ^ manPage