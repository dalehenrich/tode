manPages
browsesymbolDictManPage
  | manPage |
  manPage := TDManPage
    commandName: 'symbolDict'
    sourceMethod: self name asString , '>>browsesymbolDict'
    fromString:
      'NAME
  browse symbolDict - Find and view a list of classes in a symbol dictionary

SYNOPSIS
  browse symbolDict [--hier] [--user=<user-id>] <symbol-dictionary-name>
  browse symbolDict [--hier] --user=<user-id>
  browse symbolDict --list [--user=<user-id>] 
  browse symbolDict --globals [--user=<user-id>] <symbol-dictionary-name>

DESCRIPTION
  The `browse symbolDict` command brings up a window on a list of classes present in
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

  If the --list option is present, an inspector is opened on the symbol list for the 
  specified user. 

  If the --globals option is present, an inspector is opened on the non-behavior valued
  associations in the named symbol dictionary.

OPTIONS
  --select=<select-block>
    If the --list option is present, then the argument to the select block is a 
    SymbolDictionary:

      --select=`[:dict | (''Global'' asRegex search: dict name asString)  not ]`

    If the --global option is present, then the argument to the select block is
    an Association:

      --select=`[:assoc | assoc value isString ]`

EXAMPLES
  browse symbolDict --user=SystemUser UserGlobals
  browse --select=`[:def | ''Tool'' asRegex search: def label ]` symbolDict UserGlobals
  browse symbolDict --list --user=SystemUser
  browse symbolDict --list 
  browse --select=`[:dict | (''Global'' asRegex search: dict name asString) ]` symbolDict --list 
  browse symbolDict --user=SystemUser
  browse symbolDict --globals --user=SystemUser Globals
  browse --select=`[:assoc | assoc value isString ]` symbolDict --globals --user=SystemUser Globals
'.
  ^ manPage