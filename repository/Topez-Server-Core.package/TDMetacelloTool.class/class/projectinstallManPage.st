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
  project install ( <project-name> | [--local|--stone] --url=<project-entry-url> )

DESCRIPTION

  If there is already a project with the same project name in your project list, the download
  will be skipped.

  If this command is run as a result of a project entry install script, the project path of the
  outermost project entry (i.e., the project that initiated the original install script) is used
  instead of the path implied by either the --local or --stone options.

OPTIONS

EXAMPLES
  project install Sample
  project install --local --url=http://gsdevkit.github.io/GsDevKit_home/Sample.ston
  project install --stone --url=http://gsdevkit.github.io/GsDevKit_home/Sample.ston
'.
  ^ manPage