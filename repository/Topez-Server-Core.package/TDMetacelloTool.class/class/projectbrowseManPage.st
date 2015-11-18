project
projectbrowseManPage
  | manPage |
  manPage := TDManPage
    commandName: 'browse'
    sourceMethod: self name asString , '>>projectbrowse'
    fromString:
      'NAME
  project browse - Browse project artifacts

SYNOPSIS
  project browse [--entry] [--config] [--categories] [--dirty] [--packages] [--repositories] [--tests] <project-name>

DESCRIPTION
  Browse one or more of the artifacts for <project-name>.

OPTIONS
  --entry
    Browse the project entry for <project-name>. If no project entry exists, a project entry is created in 
    /sys/stone/projects.

  --config
    Browse the BaselineOf or ConfigurationOf class for <project-name>. If the config class is not present in
    the image, download the config from the appropriate project repository.

  --categories
    Browse the list categories for the classes present in <project-name>.

  --classes
    Browse the list of classes present in <project-name>.

  --dirty
    Browse the list of dirty packages present in <project-name>.

  --packages
    Browse the list of packages present in <project-name>.

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