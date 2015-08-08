manPages
browsereferencesManPage
  | manPage |
  manPage := TDManPage
    commandName: 'references'
    fromString:
      'NAME
  browse references - Find and view lists of methods referencing certain artifacts

SYNOPSIS
  browse references [--class=<class-name>] <global-name>...
  browse references [--class=<class-name>] --literal <literal>... 

DESCRIPTION
  The `browse references`  command brings up a method definition window on the
  methods that reference the specified globals, literals or classes.

  With no options specified the arguments are resolved against the current user''s 
  symbol list:

    GsCurrentSession currentSession symbolList objectNamed: globalName

  With the --literal option present, each of the arguments is compiled into a
  literal.

  By default all methods in classes defined in the current  user''s symbol list are 
  searched references to the global or literal.

  If the --class option is present, then only the named class is scanned for 
  references.

EXAMPLES
  browse references GsNMethod
  browse references --literal `''not yet implemented''`
  browse references --literal `#at:put:`
  browse references --literal `1.0`
  browse references --literal `#( 1 2 3)`
  browse references --literal `#[ 1 2 3]`
  browse references --class=ClassOrganizer --literal `#at:put:`
  browse references --class=ClassOrganizer SortedCollection
  browse --scriptPath references --literal `1.0`
  browse --scriptPath=~/tode references --literal `1.0`
  browse --scriptPath --select=`[:node | ''Tool'' asRegex search: node name ]` references --literal `1.0`
'.
  ^ manPage