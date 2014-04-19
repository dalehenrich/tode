browse
browseclassManPage
  | manPage |
  manPage := TDManPage
    fromString:
      'NAME
  browse class - Find and view lists of classes

SYNOPSIS
  browse class [--exact] [--hier] <class-name-pattern>...
  browse class --full <class-name>

DESCRIPTION
  The `browse class` command brings up a window on a list of classes.

  With no options, the command arguments are interpreted as regex expressions. The
  regex expression is used to match against the full list of classes found
  in the users symbol list (`GsCurrentSession currentSession symbolList`). 

  When a class is selected from the class list, a full class browser is opened.

  If the --exact option is present, the command arguments are interpreted as 
  class names and only those listed classes are brought up in the list.

  If the --hier option is present, the superclass list for each of the matching 
  classes is included in the list.

  If the --full option is present, a full class browser is drectly opened on the
  given class.
 
EXAMPLES
  browse class method stream
  browse class --exact GsNMethod
  browse class --exact --hier GsNMethod
  browse class --hier method|stream
  browse class --full GsNMethod
  browse --select=`[:def | (''^OB'' asRegex search: def label) not ]` class --hier method|stream
'.
  ^ manPage