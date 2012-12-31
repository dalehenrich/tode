as yet unclassified
edit: aTopez windowId: inWindowId
  | aWindowId clientListElement |
  aWindowId := inWindowId.
  aWindowId == nil
    ifTrue: [ aWindowId := aTopez windowIdNamed: #'debugStack' ].
  clientListElement := self clientListElement.
  clientListElement topez: aTopez.
  ^ aTopez
    editListElement: clientListElement
    label: self exception description
    inWindow: aWindowId
    at: #'debugger'