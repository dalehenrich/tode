as yet unclassified
edit: aTopez windowId: inWindowId
  | clientElement windowId |
  clientElement := self clientSourceElement.
  windowId := inWindowId.
  windowId == nil
    ifTrue: [ windowId := aTopez windowIdNamed: #'debugger' ].
  ^ aTopez
    editElement: clientElement
    edittingCode: true
    stylingActive: true
    label: self printString
    inWindow: windowId
    at: #'method'