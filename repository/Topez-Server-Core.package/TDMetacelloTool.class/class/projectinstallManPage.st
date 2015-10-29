project
projectinstallManPage
  | manPage |
  manPage := TDManPage
    commandName: 'clone'
    sourceMethod: self name asString , '>>projectinstall'
    fromString:
      'NAME
  project install - Run the installScript for the given project entry

SYNOPSIS
  project install ( <project-name> | [--local] --url=<project-entry-url> )

DESCRIPTION

OPTIONS

EXAMPLES
  project install Sample
  project install --local --url=http://gsdevkit.github.io/GsDevKit_home/Sample.ston
'.
  ^ manPage