*topez-server-core
edit: parentObject topez: aTopez aspect: anAspect windowName: windowName windowId: windowId windowLocation: windowLocation
  "anAspect: #edit, #debug, #inspect"

  ^ self
    edit: parentObject
    topez: aTopez
    aspect: anAspect
    selectionIndex: nil
    windowName: windowName
    windowId: windowId
    windowLocation: windowLocation