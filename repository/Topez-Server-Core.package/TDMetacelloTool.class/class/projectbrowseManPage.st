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
  project browse --entry <project-name>
          browse --config <project-name>
          browse --categories <project-name>
          browse --classes <project-name>
          browse --dirty <project-name>
          browse --packages <project-name>
          browse --repositories <project-name>
          browse --tests <project-name>

DESCRIPTION

OPTIONS

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