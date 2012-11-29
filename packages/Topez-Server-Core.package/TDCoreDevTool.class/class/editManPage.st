as yet unclassified
editManPage
    ^ 'NAME
    edit - open a window

SYNOPSIS
    edit [ windowId | windowName ]
    edit [ windowId | windowName ]  path
    edit [ windowId | windowName ]  command_and_args

DESCRIPTION
    In the first form of the command the window with the given
    `windowId` or `windowName` is activated, i.e., expanded and
    brought to the front.

    In the second form of the command a window is opened on
    the contents of the node at the given path.

    In the third form of the command a window is opened on
    the value returned by executing the given command and 
    arguments.

    In the last two forms of the command when a `windowId` 
    or `windowName` is specified, the contens of window with 
    the given `windowId` or `windowName` is replaced. 

    If no window exists with the given windowId, then a new
    window with the given name is created. 

    A `windowId` is a purely numeric token (Integer) and a 
    `windowName`  is the `#` character followed by alphanueric
    characters (Symbol).
'