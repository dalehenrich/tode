manPages
findcategoryManPage
  | manPage |
  manPage := TDManPage
    commandName: 'category'
    sourceMethod: self name asString , ' class>>findcategoryManPage'
    fromString:
      'NAME
  find category - Find list of class definitions in a category

SYNOPSIS
  find category [--hier] <category-name-pattern>...
  find category [--hier] --exact <category-name>...

DESCRIPTION
  The `find category` command returns a list of class definitions present in the 
  specified class categories.

  With no options, the command arguments are interpreted as regex expressions. The
  regex expression is used to match against the list of categories found for
  classes in the users symbol list (`GsCurrentSession currentSession symbolList`). 

  If the --exact option is present, the command arguments are interpreted as 
  category names and no pattern matching is performed.

  If the --hier option is present, the superclass list for each of the classes is 
  included the list.

EXAMPLES
  find category topez-server tode
  find category --exact Topez-Server-Core
  find category --hier --exact Topez-Server-Core
'.
  ^ manPage