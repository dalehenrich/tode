commands
mpManPage
  | manPage |
  manPage := TDManPage
    commandName: 'mp'
    fromString:
      'NAME
  mp - Metacello project management support.

SYNOPSIS
DESCRIPTION

  Commands:
    list

  Use `mp --help <command>` to read about a specific subcommand.

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.


EXAMPLES
  mp --help references

  mp list
'.
  manPage subCommands
    at: 'list' put: self mplistManPage;
    yourself.
  ^ manPage