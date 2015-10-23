manPages
windowsrestoreManPage
  | manPage |
  manPage := TDManPage
    commandName: 'restore'
    sourceMethod: self name asString , '>>windowsrestore'
    fromString:
      'NAME
  windows restore - Restore windows that were open when previous session ended

SYNOPSIS
  windows restore [--age=<duration>]

DESCRIPTION

OPTIONS
  --age=<duration>
    Only clent element YOUNGER than <duration> are restored

EXAMPLES
  windows --help restore

  windows restore
  windows restore --age=`1 hour`
'.
  ^ manPage