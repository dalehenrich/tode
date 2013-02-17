*topez-server-core
edit: parentObject topez: aTopez aspect: anAspect selectionIndex: aSelectionIndex highlightIndex: aHighlightIndex windowName: windowName windowId: windowId windowLocation: windowLocation
  "anAspect: #edit, #debug, #inspect"

  ^ self
    edit: parentObject
    topez: aTopez
    aspect: anAspect
    selectionIndex: aSelectionIndex
    highlightIndex: aHighlightIndex
    parentListIndex: nil
    windowName: windowName
    windowId: windowId
    windowLocation: windowLocation