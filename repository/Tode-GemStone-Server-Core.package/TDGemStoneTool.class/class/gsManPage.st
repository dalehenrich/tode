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
  Gs is the primary command for executing GemStone-specific commands.  	

  The <command> is the name of a Gs command that invokes a 
  specific operation or tool.

  Commands:
    configuration 
    fileout
    halt 
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
'.
  manPage subCommands
    at: 'gemtools' put: self gsgemtoolsManPage;
    yourself.
  ^ manPage