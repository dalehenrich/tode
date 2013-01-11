as yet unclassified
editNode: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect"

  self object rawEditBlock
    ifNil: [ 
      ^ super
        editNode: parentNode
        topez: aTopez
        aspect: anAspect
        windowId: inWindowId ].
  ^ self editBlock
    value: parentNode
    value: self
    value: anAspect
    value: inWindowId