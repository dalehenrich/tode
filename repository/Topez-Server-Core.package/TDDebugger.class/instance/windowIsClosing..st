tools
windowIsClosing: listElement
  super windowIsClosing: listElement.
  sourceWindowId
    ifNotNil: [ :windowId | 
      sourceWindowId := nil.
      listElement topez deleteWindowAt: windowId ].
  contextWindowId
    ifNotNil: [ :windowId | 
      contextWindowId := nil.
      listElement topez deleteWindowAt: windowId ].
  self terminateProcessOnClose
    ifTrue: [ self theStack terminateProcess ]