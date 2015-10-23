man pages
gemtoolToolsManPage
  | manPage |
  manPage := TDManPage
    commandName: 'tools'
    sourceMethod: self name asString , '>>gemtoolTools'
    fromString:
      'NAME
  gemtool tools - Open tODE equivalent of GemTools tools 

SYNOPSIS
  gemtool [--help] tools

DESCRIPTION

EXAMPLES
  gemtool --help tools
'.
  ^ manPage