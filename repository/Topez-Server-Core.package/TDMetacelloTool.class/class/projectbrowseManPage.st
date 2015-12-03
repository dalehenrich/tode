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
  project browse [--entry] [--baseline] [--configuration] [--categories] [--dirty] [--packages] [--repositories] [--tests] <project-name>

DESCRIPTION
  Browse one or more of the artifacts for <project-name>.

  With no options present, browse the list of classes present in <project-name>.

OPTIONS
  --entry
    Browse the project entry for <project-name>. If no project entry exists, a project entry is created in 
    /sys/stone/projects.

  --baseline
    Browse the BaselineOf for <project-name>. Behaves similarly to --configuration unless the 
    project is a hybrid project (a ConfigurationOf that directly references a BaselineOf), then 
    the baseline variant of the project is browsed.

  --configuration
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
    Browse the list or repositories used in <project-name>

  --tests
    Browse the tests defined in <project-name>

EXAMPLES
  project browse --entry Metacello
  project browse --baseline Metacello
  project browse --configuration Metacello
  project browse --categories Metacello
  project browse --classes Metacello
  project browse --dirty Metacello
  project browse --packages Metacello
  project browse --repositories Metacello
  project browse --tests Metacello
  project browse Metacello
'.
  ^ manPage