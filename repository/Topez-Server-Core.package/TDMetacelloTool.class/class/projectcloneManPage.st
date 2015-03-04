project
projectcloneManPage
  | manPage |
  manPage := TDManPage
    commandName: 'clone'
    fromString:
      'NAME
  project clone - Clone repository (github only)

SYNOPSIS
  project clone [--https] ( <project-name> | @<project-reference> )

DESCRIPTION

OPTIONS

EXAMPLES
  project clone Zinc
  project clone --https Zinc

'.
  ^ manPage