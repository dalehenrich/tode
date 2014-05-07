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
    prime
    status Display status of projects (out-of-date, up-to-date, dirty)

  Use `mp --help <command>` to read about a specific subcommand.

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.


EXAMPLES
  mp --help references

  mp list
  mp prime
  mp status
'.
  manPage subCommands
    at: 'list' put: self mplistManPage;
    yourself.
  ^ manPage