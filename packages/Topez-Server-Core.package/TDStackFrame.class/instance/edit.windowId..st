as yet unclassified
edit: aTopez windowId: inWindowId
  | windowId |
  windowId := inWindowId.
  windowId == nil
    ifTrue: [ windowId := aTopez windowIdNamed: #'debugMethod' ].
  ^ aTopez
    editSourceElement: self sourceElement
    label: self printString
    inWindow: windowId
    at: #'method'