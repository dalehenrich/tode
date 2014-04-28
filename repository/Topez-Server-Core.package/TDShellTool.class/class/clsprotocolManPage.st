cls
clsprotocolManPage
  | manPage |
  manPage := TDManPage
    commandName: 'protocol'
    fromString:
      'NAME
  cls protocol - Define and modify class protocol

SYNOPSIS
  cls protocol [--class] --add=<class-name> <protocol>...
  cls protocol [--class] --remove=<class-name> <protocol>...
  cls protocol [--class] --rename=<class-name> (<old=protocol> <new=protocol>)... 

DESCRIPTION
  The `cls protocol` command provides options for creating, removing and renaming
  the method protocol.

  With the --add option, the listed protocols will be added to the specified class.

  With the --remove option, the listed protocols will be removed from the specified 
  class.

  With the --rename option, the listed protocol pairs will be applied to the method
  protocol in the specified class.

EXAMPLES
  cls --help protocol
'.
  ^ manPage