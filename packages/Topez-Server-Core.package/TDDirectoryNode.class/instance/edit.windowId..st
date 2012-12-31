as yet unclassified
edit: aTopez windowId: inWindowId
  | aWindowId |
  aWindowId := inWindowId.
  aWindowId == nil
    ifTrue: [ aWindowId := aTopez windowIdNamed: #'inspector' ].
  ^ aTopez
    editListElement: self clientListElement
    label: self printString
    inWindow: aWindowId
    at: #'debugger'