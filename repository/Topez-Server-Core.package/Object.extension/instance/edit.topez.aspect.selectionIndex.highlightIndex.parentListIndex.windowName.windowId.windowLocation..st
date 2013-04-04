*topez-server-core
edit: parentObject topez: aTopez aspect: anAspect selectionIndex: aSelectionIndex highlightIndex: aHighlightIndex parentListIndex: aParentListIndex windowName: windowName windowId: windowId windowLocation: windowLocation
  "anAspect: #edit, #debug, #inspect"

  ^ aTopez
    editElement: parentObject
    for: self
    aspect: anAspect
    selectionIndex: aSelectionIndex
    highlightIndex: aHighlightIndex
    parentListIndex: aParentListIndex
    windowName: windowName
    windowId: windowId
    windowLocation: windowLocation