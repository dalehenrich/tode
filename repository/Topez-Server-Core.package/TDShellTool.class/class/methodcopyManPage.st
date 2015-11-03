manPages
methodcopyManPage
  | manPage |
  manPage := TDManPage
    commandName: 'copy'
    sourceMethod: self name asString , '>>methodcopy'
    fromString:
      'NAME
  method copy - Copy method to another class

SYNOPSIS
  method [--class] copy <method-spec> <class-ref>...

DESCRIPTION
  The `method copy` copies the specified method to the specified classes.

  The class may be specified by supplying the class name or path to a node 
  representing the class preceded by the `@` character.

  If the --class option is specified, the method is copied to the class-side of
  specified class.

EXAMPLES
  method copy Dictionary>>at:put: XXDictionary
  method copy Dictionary>>at:put: @/home/xxDictionary
  method copy --class Dictionary>>at:put: XXDictionary
'.
  ^ manPage