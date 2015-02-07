gs
gsManPage
  | manPage |
  manPage := TDManPage
    commandName: 'gs'
    fromString:
      'NAME
  gs - execute gemstone commands

SYNOPSIS
  gs [--help] <command> [<args>]

DESCRIPTION
  gs is the primary command for executing GemStone-specific commands.  	

  The <command> is the name of a gs command that invokes a 
  specific operation or tool.

  Commands:
    configuration      Gem and Stone configuration reports
    fileout            Fileout Classes, Categories or Packages
    halt               Halt on AlmostOutOfMemory exception
    fileSizeReport
    gemtools           Emulate GemTools Launcher Menus
    instances
    mfc 
    mreferences 
    objectAudit
    objectFor
    references
    sessionDescription
    sessionReport
    version

  Use `gs --help <command>` to read about a specific subcommand.

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.

EXAMPLES
  gs --help 
  gs --help mfc

  gs gemtools

  gs configuration --gem
  gs configuration --stone

  gs fileout --directory=/tmp/fileouts --category Metacello-Core-Scripts metacello-scripts.gs
  gs fileout --directory=/tmp/fileouts --class TDGemStoneTool gstool.gs
  gs fileout --directory=/tmp/fileouts --package Tode-GemStone-Server-Tests tests.gs

  gs halt -m=65
  gs halt -almostOutOfMemory=65
'.
  manPage subCommands
    at: 'gemtools' put: self gsgemtoolsManPage;
    at: 'configuration' put: self gsconfigurationManPage;
    at: 'fileout' put: self gsfileoutManPage;
    at: 'halt' put: self gshaltManPage;
    yourself.
  ^ manPage