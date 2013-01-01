as yet unclassified
edit: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect"

  | windowId |
  anAspect == #'inspect'
    ifTrue: [ ^ super edit: aTopez aspect: anAspect windowId: inWindowId ].
  windowId := inWindowId.
  windowId == nil
    ifTrue: [ windowId := aTopez windowIdNamed: #'debugMethod' ].
  ^ aTopez
    editSourceElement: self sourceElement
    label: self printString
    inWindow: windowId
    at: #'method'