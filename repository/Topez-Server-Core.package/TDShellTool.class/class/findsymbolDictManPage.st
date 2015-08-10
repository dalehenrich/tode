manPages
findsymbolDictManPage
  | manPage |
  manPage := TDManPage
    commandName: 'symbolDict'
    fromString:
      'NAME
  find symbolDict - Find list of class definitions in a symbol dictionary

SYNOPSIS
  find symbolDict [--hier] [--user=<user-id>] <symbol-dictionary-name>
  find symbolDict [--hier] --user=<user-id>

DESCRIPTION
  The `find symbolDict` command returns a list of class definitions present in
  the specified symbol dictionary. 

  The list of classes produced by this command is based upon the list of classes 
  present in the named symbol dictionary in the current user''s symbol list:
 
    GsCurrentSession currentSession symbolList.

  If the --user option is present, then the list of classes is based upon the 
  specified symbol dictionary in the specified user''s symbol list:

    (AllUsers
      userWithId: userId) symbolList.

  If the --user option is present and no symbol dictionary is specified then, all of 
  the classes in the specified user''s symbol list are viewed.

  If the --hier option is present, the superclass list for each of the classes is 
  included the list.

EXAMPLES
  find symbolDict --user=SystemUser UserGlobals
  find symbolDict --user=SystemUser
'.
  ^ manPage