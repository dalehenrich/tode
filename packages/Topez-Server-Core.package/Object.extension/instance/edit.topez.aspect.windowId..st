*topez-server-core
edit: parentNode topez: aTopez aspect: anAspect windowId: windowId
  "anAspect: #edit, #debug, #inspect"

  ^ aTopez
    editElement: parentNode
    for: self
    aspect: anAspect
    windowId: windowId