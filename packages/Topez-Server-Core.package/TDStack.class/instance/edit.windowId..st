as yet unclassified
edit: aTopez windowId: inWindowId
  | clientListElement windowId |
  clientListElement := self clientListElement.
  windowId := inWindowId.
  windowId == nil
    ifTrue: [ windowId := aTopez windowIdNamed: #'stack' ].
  ^ aTopez
    editListElement: clientListElement
    label: self exception description
    inWindow: windowId
    at: #'debugger'