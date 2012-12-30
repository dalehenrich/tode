as yet unclassified
edit: aTopez windowId: inWindowId
  | windowId |
  windowId := inWindowId.
  windowId == nil
    ifTrue: [ windowId := aTopez windowIdNamed: #'stack' ].
  ^ aTopez
    editListElement: self listElement
    label: self exception description
    inWindow: windowId
    at: #'debugger'