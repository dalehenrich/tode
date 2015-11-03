project
projectunlockManPage
  | manPage |
  manPage := TDManPage
    commandName: 'get'
    sourceMethod: self name asString , '>>projectunlock'
    fromString:
      'NAME
  project unlock - Unlock project registration

SYNOPSIS
  project unlock <project-name>

DESCRIPTION

OPTIONS

EXAMPLES
  project unlock Sample
'.
  ^ manPage