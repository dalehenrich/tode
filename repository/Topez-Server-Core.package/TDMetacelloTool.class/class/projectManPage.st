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
    commit   Commit the Metacello project
    compare  View differences between repository versions (git only)
    diff     View code differences between image and repository
    list     List Metacello projects
    load     (~/bin/load)
    lock
    log
    merge    (git only?)
    prime    Prime the project registry
    push     (git only)
    registry Inspect the project registry
    rehome   (~/bin/mapRepos)
    status
    test
    validate Validate the project registrations
    workdir  Create working directory for project

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
    at: 'diff' put: self projectdiffManPage;
    at: 'compare' put: self projectcompareManPage;
    yourself.
  ^ manPage