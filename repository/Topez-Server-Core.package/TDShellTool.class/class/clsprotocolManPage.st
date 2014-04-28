manPages
clsprotocolManPage
  | manPage |
  manPage := TDManPage
    commandName: 'protocol'
    fromString:
      'NAME
  cls protocol - Define and modify class protocol

SYNOPSIS
  cls protocol [--class] --add=<class-ref> <protocol>...
  cls protocol [--class] --remove=<class-ref> <protocol>...
  cls protocol [--class] --rename=<class-ref> (<old=protocol> <new=protocol>)... 

DESCRIPTION
  The `cls protocol` command provides options for creating, removing and renaming
  the method protocol.

  The class-ref may be the name of a class or the path to a node returning a class
  preceded by the `@` character.

  With the --add option, the listed protocols will be added to the specified class.

  With the --remove option, the listed protocols will be removed from the specified 
  class.

  With the --rename option, the listed protocol pairs will be applied to the method
  protocol in the specified class.

EXAMPLES
  cls --help protocol
  cls protocol --add=TDShellTool accessing updating
  cls protocol --class --add=TDShellTool `instance creation`
  cls protocol --remove=TDShellTool `initialize-release` initialize
  cls protocol --rename=@/home/tode/shellToolClass `initialize-release` initialize
'.
  ^ manPage