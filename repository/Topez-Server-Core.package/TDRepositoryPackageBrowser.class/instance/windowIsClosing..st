actions
windowIsClosing: listElement
  super windowIsClosing: listElement.
  versionsWindowId
    ifNotNil: [ :windowId | 
      versionsWindowId := nil.
      listElement topez deleteWindowAt: windowId ]