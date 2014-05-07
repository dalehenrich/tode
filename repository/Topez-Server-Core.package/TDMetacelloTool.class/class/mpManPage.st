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
    changes  (~/tode/diff)
    commit   (~/bin/commit)
    list
    prime
    registry
    rehome   (~/bin/mapRepos)
    reload   (~/bin/load)
    status
    validate

  Use `mp --help <command>` to read about a specific subcommand.

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.


EXAMPLES
  mp --help

'.
  manPage subCommands
    at: 'list' put: self mplistManPage;
    yourself.
  ^ manPage