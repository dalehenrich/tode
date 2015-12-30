*tode-gemstone-pointerdetective
ppiManPage
  | manPage |
  manPage := TDManPage
    commandName: 'ppi'
    fromString:
      'NAME
  ppi - Roassal-based tool for analyzing object reference paths

SYNOPSIS
  ppi [--help] <command> [<options>] [ <priority>... ]

DESCRIPTION
  Commands:
    calc  Calculate reference paths to given object
    clear Clear reference path cache
    view  Browse reference paths to given objects

OPTIONS
  --help [<command>]
    Bring up this man page or a man page for a subCommand.
 
EXAMPLES
  ppi --help

'.
  manPage subCommands
    at: 'calc' put: self ppicalcManPage;
    at: 'view' put: self ppiviewManPage;
    at: 'clear' put: self ppiclearManPage;
    yourself.
  ^ manPage