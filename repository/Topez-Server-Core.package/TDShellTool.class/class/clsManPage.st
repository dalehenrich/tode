cls
clsManPage
  | manPage |
  manPage := TDManPage
    commandName: 'browse'
    fromString:
      'NAME
  cls - class manipulation support

SYNOPSIS
  cls [--help] <command> <class-name> [<args>]

DESCRIPTION

  Cls performs commands on the specified class.

  Commands:
    accessors  Define instance variable getter and setter methods for the class
    comment
    copy
    create
    definition 
    history
    protocol
    rename
    remove

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.

EXAMPLES
'.
  manPage subCommands
    at: 'accessors' put: self clsaccessorsManPage;
    yourself.
  ^ manPage