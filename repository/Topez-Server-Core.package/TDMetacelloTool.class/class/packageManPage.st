package
packageManPage
  | manPage |
  manPage := TDManPage
    commandName: 'package'
    fromString:
      'NAME
  package - Metacello package management support.

SYNOPSIS
  package [--help] <command> [<args>]

DESCRIPTION

  Commands:

  Use `package --help <command>` to read about a specific subcommand.

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.


EXAMPLES
  package --help

'.
  manPage subCommands yourself.
  ^ manPage