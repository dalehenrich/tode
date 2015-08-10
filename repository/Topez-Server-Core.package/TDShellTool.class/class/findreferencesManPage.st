manPages
findreferencesManPage
  | manPage |
  manPage := TDManPage
    commandName: 'references'
    fromString:
      'NAME
  find references - Find list of method definitions referencing certain artifacts

SYNOPSIS
  find references [--class=<class-name>] <global-name>...
  find references [--class=<class-name>] --literal <literal>... 

DESCRIPTION
  The `find references` command returns a list of method definitions on the
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
  find references GsNMethod
  find references --literal `''not yet implemented''`
  find references --literal `#at:put:`
  find references --literal `1.0`
  find references --literal `#( 1 2 3)`
  find references --literal `#[ 1 2 3]`
  find references --class=ClassOrganizer --literal `#at:put:`
  find references --class=ClassOrganizer SortedCollection
  find --scriptPath references --literal `1.0`
  find --scriptPath=~/tode references --literal `1.0`
  find --scriptPath --select=`[:node | ''Tool'' asRegex search: node name ]` references --literal `1.0`
'.
  ^ manPage