editting
editorWindowNamed: aWindowName
    | windowId |
    windowId := self windowIdNamed: aWindowName.
    ^ self editorWindowAt: windowId