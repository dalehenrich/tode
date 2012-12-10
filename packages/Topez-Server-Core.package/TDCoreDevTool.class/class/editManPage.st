as yet unclassified
editManPage
    ^ 'NAME
    edit - open a window on path or objIn

SYNOPSIS
    edit [ windowId | windowName ] [ path ]

DESCRIPTION
    Open a window on an object. The message #edit:windowId:
    is sent to the node that is resolved from the `path` or `objIn`.

    When a `windowId` or `windowName` is specified, the 
    contens of window with the given `windowId` or 
    `windowName` is replaced. 

    If no window exists with the given windowId, then a new
    window with the given name is created. 

    A `windowId` is a purely numeric token (Integer) and a 
    `windowName`  is the `#` character followed by alphanueric
    characters (Symbol).
'