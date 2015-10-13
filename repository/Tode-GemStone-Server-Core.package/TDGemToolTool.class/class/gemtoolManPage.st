man pages
gemtoolManPage
  | manPage |
  manPage := TDManPage
    commandName: 'gemtool'
    fromString:
      'NAME
  gemtool - Provide GemTools MenuBar functionality

SYNOPSIS
  gemtool [--help] <command> [<args>]

DESCRIPTION
  gemtools implements most of the GemTools MenuBar funcationality.  	

  The <command> is the name of a gemtools command that invokes a 
  specific operation or tool.

  Commands:
    bu      System backup and restore
    find    Prompt-based variants of the `browse` family of commands
    menuBar Open window that bridges the gap between GemTools and tODE
    tools   Open tODE equivalent of GemTools tools 

  Use `gemtool --help <command>` to read about a specific subcommand.

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.

EXAMPLES
  gemtool --help 

  gemtool bu backup
  gemtool bu list
  gemtool bu restore

  gemtool find class
'.
  manPage subCommands
    at: 'bu' put: self gemtoolBackupManPage;
    at: 'menuBar' put: self gemtoolMenuBarManPage;
    at: 'find' put: self gemtoolFindManPage;
    at: 'tools' put: self gemtoolToolsManPage;
    yourself.
  ^ manPage