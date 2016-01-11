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
    fileSizeReport     Report on repository size and amount of free space
    flushCaches        Flush GLASS/GsDevKit caches
    gemtools           Emulate GemTools Launcher Menus
    halt               Halt on AlmostOutOfMemory exception
    instances
    mfc                Perform a Mark for Collection
    mreferences 
    objectAudit
    objectFor          Resolve an object from given objectId
    reclaimAll         Initiate Repository>>reclaimAll
    references         Find reference paths to the given objects
    sessionDescription Session information report
    sslLog             Inspect GsSecureSocket SSL log
    version            OS, hardware and GemStone version attributes for Client, Gem, or Stone

  Use `gs --help <command>` to read about a specific subcommand.

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.

EXAMPLES
  gs --help 
  gs --help mfc

  gs configuration --gem
  gs configuration --stone

  gs fileout --directory=/tmp/fileouts --category Metacello-Core-Scripts metacello-scripts.gs
  gs fileout --directory=/tmp/fileouts --class TDGemStoneTool gstool.gs
  gs fileout --directory=/tmp/fileouts --package Tode-GemStone-Server-Tests tests.gs

  gs fileSizeReport

  gs gemtools

  gs halt -m=65
  gs halt -almostOutOfMemory=65

  gs mfc
  gs mfc --noCommit
  gs mfc --threads=3 --wait=120 --cpu=40
  gs mfc --buffer=256

  gs objectFor

  gs references --max=32

  gs sessionDescription
  gs sessionDescription 5
  gs sessionDescription --all

  gs sslLog

  gs version
  gs version --client
  gs version --gem
  gs version --stone
'.
  manPage subCommands
    at: 'gemtools' put: self gsgemtoolsManPage;
    at: 'configuration' put: self gsconfigurationManPage;
    at: 'fileout' put: self gsfileoutManPage;
    at: 'halt' put: self gshaltManPage;
    at: 'fileSizeReport' put: self gsfileSizeReportManPage;
    at: 'mfc' put: self gsmfcManPage;
    at: 'objectFor' put: self gsobjectForManPage;
    at: 'sessionDescription' put: self gssessionDescriptionManPage;
    at: 'version' put: self gsversionManPage;
    at: 'references' put: self gsreferencesManPage;
    at: 'sslLog' put: self gssslLogManPage;
    at: 'flushCaches' put: self gsflushCachesManPage;
    at: 'reclaimAll' put: self gsreclaimAllManPage;
    yourself.
  ^ manPage