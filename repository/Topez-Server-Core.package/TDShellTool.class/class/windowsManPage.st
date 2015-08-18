as yet unclassified
windowsManPage
  | manPage |
  manPage := TDManPage commandName: 'windows' fromString: 'NAME
  windows - 

SYNOPSIS
  windows  <command> [<args>]

DESCRIPTION

  Commands:
    list
    restore

  Use `windows --help <command>` to read about a specific subcommand.

OPTIONS

EXAMPLES
  windows --help 
  windows --help references

  windows list

  windows restore
'.
  manPage subCommands
    at: 'list' put: self windowslistManPage;
    at: 'restore' put: self windowsrestoreManPage;
    yourself.
  ^ manPage