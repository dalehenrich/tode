manPages
windowsManPage
  | manPage |
  manPage := TDManPage
    commandName: 'windows'
    fromString:
      'NAME
  windows - 

SYNOPSIS
  windows <command> [<args>]

DESCRIPTION

  Commands:
    restore - Restore windows that were open when previous session ended

  Use `windows --help <command>` to read about a specific subcommand.

OPTIONS

EXAMPLES
  windows --help 
  windows --help restore

  windows restore
  windows restore --age=`1 hour`
'.
  manPage subCommands
    at: 'restore' put: self windowsrestoreManPage;
    yourself.
  ^ manPage