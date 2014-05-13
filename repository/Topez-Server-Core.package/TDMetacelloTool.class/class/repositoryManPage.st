repository
repositoryManPage
  | manPage |
  manPage := TDManPage
    commandName: 'repository'
    fromString:
      'NAME
  repository - Metacello repository management support.

SYNOPSIS
  repository [--help] <command> [<args>]

DESCRIPTION

  Commands:
    flush

  Use `repository --help <command>` to read about a specific subcommand.

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.


EXAMPLES
  repository --help

'.
  manPage subCommands yourself.
  ^ manPage