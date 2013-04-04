*topez-server-core
edit: parentObject topez: aTopez aspect: anAspect selectionIndex: aSelectionIndex windowName: windowName windowId: windowId windowLocation: windowLocation
  "anAspect: #edit, #debug, #inspect"

  ^ self
    edit: parentObject
    topez: aTopez
    aspect: anAspect
    selectionIndex: aSelectionIndex
    highlightIndex: nil
    windowName: windowName
    windowId: windowId
    windowLocation: windowLocation