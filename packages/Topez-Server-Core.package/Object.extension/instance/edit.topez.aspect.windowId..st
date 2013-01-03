*topez-server-core
edit: parentNode topez: aTopez aspect: anAspect windowId: windowId
  "anAspect: #edit, #debug, #inspect"

  ^ (self asTDObjectNode: parentNode topez: aTopez aspect: anAspect)
    edit: parentNode
    topez: aTopez
    aspect: anAspect
    windowId: windowId