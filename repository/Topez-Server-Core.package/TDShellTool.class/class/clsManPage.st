cls
clsManPage
  | manPage |
  manPage := TDManPage
    commandName: 'cls'
    fromString:
      'NAME
  cls - class management

SYNOPSIS
  cls [--help] <command> <class-name>|@<class-path> [<args>]

DESCRIPTION

  Cls performs commands on the specified class. The class may be spedified by
  supplying the class name or path to a node representing the class preceded by 
  the `@` character.

  Commands:
    accessors  Define instance variable getter and setter methods for the class
    comment    View and define the class comment
    copy       Make a copy of a class
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
  cls accessors ClassA ClassB ClassC
  cls accessors --class --instance ClassA
  cls accessors --class --force ClassA
  cls accessors --arg=aBool --protocol=Updating --setters ClassA

  cls comment ClassA ClassB
  cls comment @/home/tode/classA

  cls copy ClassA ClassB
  cls copy @/home/tode/classA ClassB
'.
  manPage subCommands
    at: 'accessors' put: self clsaccessorsManPage;
    at: 'comment' put: self clscommentManPage;
    at: 'copy' put: self clscopyManPage;
    yourself.
  ^ manPage