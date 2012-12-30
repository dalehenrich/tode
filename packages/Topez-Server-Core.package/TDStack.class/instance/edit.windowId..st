as yet unclassified
edit: aTopez windowId: inWindowId
  | aWindowId |
  aWindowId := inWindowId.
  aWindowId == nil
    ifTrue: [ aWindowId := aTopez windowIdNamed: #'debugStack' ].
  ^ aTopez
    editListElement: self listElement
    label: self exception description
    inWindow: aWindowId
    at: #'debugger'