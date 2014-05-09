project
projectdiffManPage
  | manPage |
  manPage := TDManPage
    commandName: 'diff'
    fromString:
      'NAME
  project diff - View code differences between image and repository

SYNOPSIS
  project diff  <project-name>

DESCRIPTION

EXAMPLES
  project diff Tode
'.
  ^ manPage