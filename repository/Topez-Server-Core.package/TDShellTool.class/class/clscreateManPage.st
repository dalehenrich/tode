manPages
clscreateManPage
  | manPage |
  manPage := TDManPage
    commandName: 'create'
    sourceMethod: self name asString , ' class>>clscreateManPage'
    fromString:
      'NAME
  cls create - Create a new class

SYNOPSIS
  cls create <new-class-name> <superclass-name> <class-category>

DESCRIPTION
  The `cls create` command createsa new class named <new-class-name>,
  as a subclass of the class named <superclass-name>, in the class
  category <class-category>.

EXAMPLES
  cls --help create
  cls create ClassB Object ClassBCategory
'.
  ^ manPage