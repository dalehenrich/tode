as yet unclassified
edit: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect"

  | aWindowId clientListElement |
  anAspect == #'inspect'
    ifTrue: [ ^ super edit: aTopez aspect: anAspect windowId: inWindowId ].
  aWindowId := inWindowId.
  aWindowId == nil
    ifTrue: [ aWindowId := aTopez windowIdNamed: #'inspector' ].
  clientListElement := self
    clientListElement;
    aspect: anAspect;
    yourself.
  ^ aTopez
    editListElement: clientListElement
    label: self printString
    inWindow: aWindowId
    at: #'debugger'