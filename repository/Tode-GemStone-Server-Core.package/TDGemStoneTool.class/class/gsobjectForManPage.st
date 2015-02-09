gs
gsobjectForManPage
  | manPage |
  manPage := TDManPage
    commandName: 'objectFor'
    fromString:
      'NAME
  gs objectFor - Resolve an object from given objectId

SYNOPSIS
  gs objectFor <object-id>

DESCRIPTION
  Return the object with the given <object-id>, or nil if no such
  object exists.  The <object-id> may specify a special object.

EXAMPLES
  gs objectFor
'.
  ^ manPage