project
projectbrowseManPage
  | manPage |
  manPage := TDManPage
    commandName: 'clone'
    sourceMethod: self name asString , '>>projectbrowse'
    fromString:
      'NAME
  project browse - Browse project artifacts

SYNOPSIS
  project browse [--entry] [--config] [--categories] [--dirty] [--packages] [--repositories] [--tests] <project-name>

DESCRIPTION
  Browse one or more of the artivacts for <project-name>.

OPTIONS
  --entry
    Browse the project entry for <project-name>. If no project entry exists, a project entry is created in 
    /sys/stone/projects.

  --config
  --categories
  --dirty
  --packages
  --repositories
  --tests
EXAMPLES
  project browse --entry Metacello
  project browse --config Metacello
  project browse --categories Metacello
  project browse --classes Metacello
  project browse --dirty Metacello
  project browse --packages Metacello
  project browse --repositories Metacello
  project browse --tests Metacello
'.
  ^ manPage