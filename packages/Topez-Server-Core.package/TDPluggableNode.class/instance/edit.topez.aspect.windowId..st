as yet unclassified
edit: parentNode topez: aTopez aspect: anAspect windowId: windowId
  "anAspect: #edit, #debug, #inspect"

  editBlock
    ifNil: [ 
      ^ super
        edit: parentNode
        topez: aTopez
        aspect: anAspect
        windowId: windowId ].
  ^ self editBlock
    value: parentNode
    value: self
    value: anAspect
    value: windowId