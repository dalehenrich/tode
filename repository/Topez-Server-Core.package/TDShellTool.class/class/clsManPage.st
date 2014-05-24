manPages
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
    category   Move class to a new category
    comment    View and define the class comment
    copy       Make a copy of a class
    definition View and define the class
    history    View class history
    protocol   Define and modify class protocol
    remove     Remove classes
    rename     Rename classes

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.

EXAMPLES
  cls accessors ClassA ClassB ClassC
  cls accessors --class --instance ClassA
  cls accessors --class --force ClassA
  cls accessors --arg=aBool --protocol=Updating --setters ClassA

  cls category Topez-Server-Core TDShellTool TDStandardTool
  cls category Topez-Server-Core @/home/tode/shellToolClass TDStandardTool

  cls comment ClassA ClassB
  cls comment @/home/tode/classA

  cls copy ClassA ClassB
  cls copy @/home/tode/classA ClassB

  cls --help definition
  cls definition ClassA ClassB
  cls definition @/home/tode/classA ClassB

  cls history ClassA 
  cls history @/home/tode/classA 

  cls protocol --add=TDShellTool accessing updating
  cls protocol --class --add=TDShellTool `instance creation`
  cls protocol --remove=TDShellTool `initialize-release` initialize
  cls protocol --rename=@/home/tode/shellToolClass `initialize-release` initialize

  cls remove TDShellTool TDTestTool
  cls remove @/home/tode/shellToolClass TDTestTool

  cls rename TDShellTool TDShellTools
  cls rename @/home/tode/shellToolClass TDShellTools
'.
  manPage subCommands
    at: 'accessors' put: self clsaccessorsManPage;
    at: 'comment' put: self clscommentManPage;
    at: 'copy' put: self clscopyManPage;
    at: 'definition' put: self clsdefinitionManPage;
    at: 'history' put: self clshistoryManPage;
    at: 'protocol' put: self clsprotocolManPage;
    at: 'rename' put: self clsrenameManPage;
    at: 'category' put: self clscategoryManPage;
    at: 'remove' put: self clsremoveManPage;
    yourself.
  ^ manPage