browse
browsecategoryManPage
  | manPage |
  manPage := TDManPage
    fromString:
      'NAME
  browse category - Find and view lists of classes in a category

SYNOPSIS
  browse category [--hier] <category-name-pattern>...
  browse category [--hier] --exact <category-name>...

DESCRIPTION
  The `browse category` command brings up a window on a list of classes present in
  the specified class categories.

  With no options, the command arguments are interpreted as regex expressions. The
  regex expression is used to match against the list of categories found for
  classes in the users symbol list (`GsCurrentSession currentSession symbolList`). 

  If the --exact option is present, the command arguments are interpreted as 
  category names and no pattern matching is performed.

  If the --hier option is present, the superclass list for each of the classes is 
  included the list.

EXAMPLES
  browse category topez-server tode
  browse category --exact Topez-Server-Core
  browse category --hier --exact Topez-Server-Core
  browse --select=`[:def | ''Tool'' asRegex search: def label ]` category tode
  browse --select=@filter category tode
'.
  ^ manPage