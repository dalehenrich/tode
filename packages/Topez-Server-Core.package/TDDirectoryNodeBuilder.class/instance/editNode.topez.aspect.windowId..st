as yet unclassified
editNode: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  anAspect == #'inspect'
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