man pages
gemtoolBackupManPage
  | manPage |
  manPage := TDManPage
    commandName: 'bu'
    sourceMethod: self name asString , '>>gemtoolBackup'
    fromString:
      'NAME
  gemtool bu - Open tODE equivalent of GemTools tools 

SYNOPSIS
  gemtool [--help] bu ( backup | list | restore )

DESCRIPTION

EXAMPLES
  gemtool --help tools
'.
  ^ manPage