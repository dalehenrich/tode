cls
clsManPage
  | manPage |
  manPage := TDManPage
    commandName: 'browse'
    fromString:
      'NAME
  cls - class manipulation support

SYNOPSIS
  cls [--help] <command> <class-name>|@<class-path> [<args>]

DESCRIPTION

  Cls performs commands on the specified class. The class may be spedified by
  supplying the class name or path to a node representing the class preceded by 
  the `@` character.

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
    at: 'comment' put: self clscommentManPage;
    yourself.
  ^ manPage