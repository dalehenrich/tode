tools
windowIsClosing: listElement
  super windowIsClosing: listElement.
  sourceWindowId
    ifNotNil: [ :wId | 
      sourceWindowId := nil.
      listElement topez deleteWindowAt: wId ]