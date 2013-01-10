as yet unclassified
edit: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect,
   #source, #contents"

  | frameNode |
  anAspect == #'source'
    ifTrue: [ ^ self editSource: aTopez windowId: inWindowId ].
  parentNode ~~ nil
    ifTrue: [ 
      frameNode := parentNode childNamed: self frameIndex asString ifAbsent: [  ].
      anAspect == #'contents'
        ifTrue: [ ^ self editContents: frameNode topez: aTopez windowId: inWindowId ] ].
  ^ super
    edit: frameNode
    topez: aTopez
    aspect: anAspect
    windowId: inWindowId