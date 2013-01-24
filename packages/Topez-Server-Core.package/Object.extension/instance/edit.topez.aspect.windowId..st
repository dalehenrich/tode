*topez-server-core
edit: parentObject topez: aTopez aspect: anAspect windowId: windowId
  "anAspect: #edit, #debug, #inspect"

  ^ aTopez
    editElement: parentObject
    for: self
    aspect: anAspect
    windowId: windowId