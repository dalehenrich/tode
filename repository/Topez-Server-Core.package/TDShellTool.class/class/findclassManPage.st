manPages
findclassManPage
  | manPage |
  manPage := TDManPage
    commandName: 'class'
    fromString:
      'NAME
  find class - Find and view lists of classes matching a pattern

SYNOPSIS
  find class [--hier | --full] [--exact] <class-name-pattern>...

DESCRIPTION
  The `find class` command brings up a window on a list of classes
  matching <class-name-pattern>.

  With no options, the command arguments are interpreted as regex expressions. The
  regex expression is used to match against the list of classes in the users symbol 
  list (`GsCurrentSession currentSession symbolList`). 

  If the --exact option is present, the command arguments are interpreted as 
  class names and no pattern matching is performed.

  If the --hier option is present, the superclass list for each of the classes is 
  included the list.

  if the --full option is present

EXAMPLES
  find category topez-server tode
  find category --exact Topez-Server-Core
  find category --hier --exact Topez-Server-Core
'.
  ^ manPage