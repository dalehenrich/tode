as yet unclassified
edit: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect,
   #source, #contents"

  anAspect == #'source'
    ifTrue: [ ^ self editSource: aTopez windowId: inWindowId ].
  anAspect == #'contents'
    ifTrue: [ ^ self editContents: aTopez windowId: inWindowId ].
  ^ super edit: aTopez aspect: anAspect windowId: inWindowId