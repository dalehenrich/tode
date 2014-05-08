commands
mpManPage
  | manPage |
  manPage := TDManPage
    commandName: 'mp'
    fromString:
      'NAME
  mp - Metacello project management support.

SYNOPSIS
  mp [--help] <command> [<args>]

DESCRIPTION

  Commands:
    changes  (~/tode/diff)
    commit   (~/bin/commit)
    list
    load     (~/bin/load)
    lock
    prime
    registry
    rehome   (~/bin/mapRepos)
    status
    validate
    workdir

  Use `mp --help <command>` to read about a specific subcommand.

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.


EXAMPLES
  mp --help

'.
  manPage subCommands
    at: 'list' put: self mplistManPage;
    at: 'prime' put: self mpprimeManPage;
    at: 'registry' put: self mpregistryManPage;
    at: 'validate' put: self mpvalidateManPage;
    at: 'commit' put: self mpcommitManPage;
    at: 'load' put: self mploadManPage;
    at: 'workdir' put: self mpworkdirManPage;
    yourself.
  ^ manPage