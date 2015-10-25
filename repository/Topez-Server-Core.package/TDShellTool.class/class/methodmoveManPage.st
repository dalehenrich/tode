manPages
methodmoveManPage
  | manPage |
  manPage := TDManPage
    commandName: 'move'
    sourceMethod: self name asString , '>>methodmove'
    fromString:
      'NAME
  method move - Move method to another class

SYNOPSIS
  method [--class] move <method-spec> <class-ref>

DESCRIPTION
  The `method move` moves the specified method to the specified classes.

  The class may be specified by supplying the class name or path to a node 
  representing the class preceded by the `@` character.

  If the --class option is specified, the method is moved to the class-side of
  specified class.

EXAMPLES
  method move Dictionary>>at:put: XXDictionary
  method move Dictionary>>at:put: @/home/xxDictionary
  method move --class Dictionary>>at:put: XXDictionary
'.
  ^ manPage