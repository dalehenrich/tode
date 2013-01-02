as yet unclassified
editContents: parentNode topez: aTopez windowId: inWindowId
  | windowId element |
  windowId := inWindowId.
  windowId == nil
    ifTrue: [ windowId := aTopez windowIdNamed: #'inspector' ].
  element := self contentsElement
    topez: aTopez;
    parentNode: parentNode;
    yourself.
  ^ aTopez
    editListElement: element
    label: self printString
    inWindow: windowId
    at: #'inspector'