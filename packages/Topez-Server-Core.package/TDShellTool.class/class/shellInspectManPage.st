as yet unclassified
shellInspectManPage
  ^ 'NAME
    inspect - open an inspector window on path or objIn

SYNOPSIS
    inspect [ windowId | windowName ] [ path ]

DESCRIPTION
    Open an inspector window on an object.

    When a `windowId` or `windowName` is specified, the 
    contens of window with the given `windowId` or 
    `windowName` is replaced. 

    If no window exists with the given windowId, then a new
    window with the given name is created. 

    A `windowId` is a purely numeric token (Integer) and a 
    `windowName`  is the `#` character followed by alphanueric
    characters (Symbol).
'