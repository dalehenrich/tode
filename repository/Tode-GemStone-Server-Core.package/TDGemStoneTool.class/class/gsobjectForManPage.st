gs
gsobjectForManPage
  | manPage |
  manPage := TDManPage
    commandName: 'objectFor'
    sourceMethod: self name asString , ' class>>gsobjectForManPage'
    fromString:
      'NAME
  gs objectFor - Resolve an object from given objectId

SYNOPSIS
  gs objectFor <object-id>...

DESCRIPTION
  Return an Array of objects with the given list of <object-id>s. The object''s slot 
  in the Array is occuped by nil if no such object exists.  The <object-id> 
  may specify a special object.

EXAMPLES
  gs objectFor 188566017
  gs objectFor 188566017 79171329

'.
  ^ manPage