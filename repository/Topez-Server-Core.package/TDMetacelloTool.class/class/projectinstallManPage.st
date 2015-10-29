project
projectinstallManPage
  | manPage |
  manPage := TDManPage
    commandName: 'clone'
    sourceMethod: self name asString , '>>projectbrowse'
    fromString:
      'NAME
  project install - Run the installScript for the given project entry

SYNOPSIS
  project install <project-name>

DESCRIPTION

OPTIONS

EXAMPLES
  project install Sample
'.
  ^ manPage