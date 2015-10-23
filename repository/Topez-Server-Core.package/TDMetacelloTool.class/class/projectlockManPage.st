project
projectlockManPage
  | manPage |
  manPage := TDManPage
    commandName: 'lock'
    sourceMethod: self name asString , ' class>>projectlockManPage'
    fromString:
      'NAME
  project lock - Lock project registration

SYNOPSIS
  project lock ( <project-name> | @<project-reference> )

DESCRIPTION

OPTIONS

EXAMPLES
  project lock Tode

'.
  ^ manPage