project
projectcloneManPage
  | manPage |
  manPage := TDManPage
    commandName: 'clone'
    fromString:
      'NAME
  project clone - Clone repository (github only)

SYNOPSIS
  project clone [--https] [--gitRoot=<git-root-dir>] ( <project-name> | @<project-reference> )

DESCRIPTION

OPTIONS

EXAMPLES
  project clone Seaside3
  project clone --https Seaside3
  project clone --gitRoot=/opt/git Seaside3
'.
  ^ manPage