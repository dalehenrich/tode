man pages
gemtoolFindManPage
  | manPage |
  manPage := TDManPage
    commandName: 'find'
    sourceMethod: self name asString , '>>gemtoolFind'
    fromString:
      'NAME
  gemtool find - Prompt-based variants of the `browse` family of commands

SYNOPSIS
  gemtool [--help] find ( class | hierarchy | references | method | senders | string )

DESCRIPTION
EXAMPLES
  gemtool --help find
'.
  ^ manPage