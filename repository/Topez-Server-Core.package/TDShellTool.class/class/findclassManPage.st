manPages
findclassManPage
  | manPage |
  manPage := TDManPage
    commandName: 'class'
    fromString:
      'NAME
  find class - Find list of class definitions

SYNOPSIS
  find class [--exact] [--hier] <class-name-pattern>...

DESCRIPTION
  The `find class` command returns a list of class definitions.

  With no options, the command arguments are interpreted as regex expressions. The
  regex expression is used to match against the full list of classes found
  in the users symbol list (`GsCurrentSession currentSession symbolList`). 

  If the --exact option is present, the command arguments are interpreted as 
  class names and only those listed class definitions are brought up in the list.

  If the --hier option is present, the superclass list for each of the matching 
  class definitions is included in the list.
 
EXAMPLES
  find class Method Stream
  find class --exact GsNMethod
  find class --exact --hier GsNMethod
  find class --hier method|stream
  find --select=`[:def | (''^OB'' asRegex search: def label) not ]` class --hier method|stream
'.
  ^ manPage