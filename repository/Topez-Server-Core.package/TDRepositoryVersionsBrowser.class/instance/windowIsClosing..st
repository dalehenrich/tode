accessing
windowIsClosing: listElement
  super windowIsClosing: listElement.
  versionInfoWindowId
    ifNotNil: [ :windowId | 
      versionInfoWindowId := nil.
      listElement topez deleteWindowAt: windowId ].
  versionInfoSummaryWindowId
    ifNotNil: [ :windowId | 
      versionInfoSummaryWindowId := nil.
      listElement topez deleteWindowAt: windowId ]