ol
olManPage
  | manPage |
  manPage := TDManPage
    commandName: 'ol'
    fromString:
      'NAME
  ol - View and manipulate object log entries

SYNOPSIS
  ol [--help] <command> [<options>] [ <priority>... ]

DESCRIPTION

  A <priority> is one of the following:

    debug
    error
    fatal
    interaction
    info
    trace
    transcript
    warn

  An empty <priority> implies the entire object log.

  Commands:
    clear Remove object log entries
    view  View object log entries

OPTIONS
  --help [<command>]
    Bring up this man page or a man page for a subCommand.
 
EXAMPLES
  ol --help

  ol view error
  ol view --inverse transcript
  ol view --age=`1 day` -r transcript

  ol clear debug error trace
  ol clear --inverse transcript
  ol clear --age=`1 month`
'.
  manPage subCommands
    at: 'view' put: self olviewManPage;
    at: 'clear' put: self olclearManPage;
    yourself.
  ^ manPage