as yet unclassified
edit: aTopez windowId: inWindowId
  | clientElement windowId |
  clientElement := self clientSourceElement.
  windowId := inWindowId.
  windowId == nil
    ifTrue: [ windowId := aTopez windowIdNamed: #'debugger' ].
  ^ aTopez
    editSourceElement: clientElement
    label: self printString
    inWindow: windowId
    at: #'method'