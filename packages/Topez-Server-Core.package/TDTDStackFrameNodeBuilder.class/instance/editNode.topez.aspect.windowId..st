as yet unclassified
editNode: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect,
   #source, #contents"

  | frameNode |
  anAspect == #'source'
    ifTrue: [ ^ self editSource: aTopez windowId: inWindowId ].
  parentNode ~~ nil
    ifTrue: [ 
      frameNode := parentNode childNamed: self object frameIndex asString ifAbsent: [  ].
      anAspect == #'contents'
        ifTrue: [ ^ self editContents: frameNode topez: aTopez windowId: inWindowId ] ].
  ^ super
    editNode: frameNode
    topez: aTopez
    aspect: anAspect
    windowId: inWindowId