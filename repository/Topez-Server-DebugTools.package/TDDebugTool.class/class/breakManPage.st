as yet unclassified
breakManPage
  | manPage |
  manPage := TDManPage
    commandName: 'break'
    fromString:
      'NAME
  break - Method breakpoint management

SYNOPSIS
  break [--help] <command> [<args>]

DESCRIPTION

  Commands:
    clear   Clear breakpoints
    enable  Enable breakpoints
    disable Disable breakpoints
    list    List breakpoints
    set     Set breakpoints
    steps   List step points for a method

OPTIONS
  --help [<subCommand>]
    Bring up this man page or a man page for a subCommand.

EXAMPLES
  break --help
'.
  manPage subCommands
    at: 'clear' put: self breakclearManPage;
    at: 'enable' put: self breakenableManPage;
    at: 'disable' put: self breakdisableManPage;
    at: 'list' put: self breaklistManPage;
    at: 'set' put: self breaksetManPage;
    at: 'steps' put: self breakstepsManPage;
    yourself.
  ^ manPage