tools
windowIsClosing: listElement
  super windowIsClosing: listElement.
  versionInfoSummaryWindowId
    ifNotNil: [ :windowId | 
      versionInfoSummaryWindowId := nil.
      listElement topez deleteWindowAt: windowId ]