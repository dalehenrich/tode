as yet unclassified
editNode: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect"

  ^ (self buildNode: parentNode topez: aTopez aspect: anAspect)
    edit: parentNode
    topez: aTopez
    aspect: anAspect
    windowId: inWindowId