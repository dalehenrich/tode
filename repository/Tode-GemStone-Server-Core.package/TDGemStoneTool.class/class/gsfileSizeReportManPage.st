gs
gsfileSizeReportManPage
  | manPage |
  manPage := TDManPage
    commandName: 'fileSizeReport'
    sourceMethod: self name asString , '>>gsfileSizeReport'
    fromString:
      'NAME
  gs fileSizeReport - Report on repository size and amount of free space

SYNOPSIS
  gs fileSizeReport

DESCRIPTION
  Opens editor on a string which reports on the name, size, and amount of free space
  for each extent and the size and free space of the entire logical Repository.

EXAMPLES
  gs fileSizeReport
'.
  ^ manPage