tool support
mbManPage
  | manPage |
  manPage := TDManPage commandName: 'mb' fromString: 'NAME
   mb - Metacello baseline management.
 
 SYNOPSIS
   mb [--help] <command> [<args>]
 
 DESCRIPTION
 
   Commands:
     baseline
     configuration
     group
     names
     package
     postload
     preload
     repository
 
   Use `mb --help <command>` to read about a specific subcommand.

 OPTIONS
   --help [<subCommand>]
     Bring up this man page or a man page for a subCommand.
 
 
 EXAMPLES
   mb --help
 
 '.
  manPage subCommands yourself.
  ^ manPage