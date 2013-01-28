*topez-server-core
edit: parentObject topez: aTopez aspect: anAspect windowName: windowName windowId: windowId windowLocation: windowLocation
  "anAspect: #edit, #debug, #inspect"

  ^ aTopez
    editElement: parentObject
    for: self
    aspect: anAspect
    windowName: windowName
    windowId: windowId
    windowLocation: windowLocation