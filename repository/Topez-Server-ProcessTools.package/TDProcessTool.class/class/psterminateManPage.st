as yet unclassified
psterminateManPage
  | manPage |
  manPage := TDManPage
    commandName: 'terminate'
    fromString:
      'NAME
  ps terminate - Terminate all active processes in image

SYNOPSIS
  ps terminate

DESCRIPTION
  Sende #terminate to each of the active processes in the image, except the current one.

EXAMPLES
  ps --help

  ps terminate
'.
  ^ manPage