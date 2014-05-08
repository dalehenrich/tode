project
projectManPage
  | manPage |
  manPage := TDManPage
    commandName: 'project'
    fromString:
      'NAME
  project - Metacello project management support.

SYNOPSIS
  project [--help] <command> [<args>]

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

  Use `project --help <command>` to read about a specific subcommand.

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.


EXAMPLES
  project --help

'.
  manPage subCommands
    at: 'list' put: self projectlistManPage;
    at: 'prime' put: self projectprimeManPage;
    at: 'registry' put: self projectregistryManPage;
    at: 'validate' put: self projectvalidateManPage;
    at: 'commit' put: self projectcommitManPage;
    at: 'load' put: self projectloadManPage;
    at: 'workdir' put: self projectworkdirManPage;
    yourself.
  ^ manPage