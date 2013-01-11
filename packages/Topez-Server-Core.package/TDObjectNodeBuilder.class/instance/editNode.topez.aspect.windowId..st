as yet unclassified
editNode: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect"

  anAspect ~~ self object aspect
    ifTrue: [ 
      ^ super
        editNode: parentNode
        topez: aTopez
        aspect: anAspect
        windowId: inWindowId ].
  ^ self
    editClient: parentNode
    topez: aTopez
    aspect: anAspect
    windowId: inWindowId