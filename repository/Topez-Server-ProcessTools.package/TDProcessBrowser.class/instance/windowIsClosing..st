tools
windowIsClosing: listElement
  super windowIsClosing: listElement.
  processWindowId
    ifNotNil: [ :windowId | 
      processWindowId := nil.
      listElement topez deleteWindowAt: windowId ]