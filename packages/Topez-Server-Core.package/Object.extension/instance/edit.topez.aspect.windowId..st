*topez-server-core
edit: parentObject topez: aTopez aspect: anAspect windowId: windowId
  "anAspect: #edit, #debug, #inspect"

  ^ self
    edit: parentObject
    topez: aTopez
    aspect: anAspect
    windowName: nil
    windowId: windowId