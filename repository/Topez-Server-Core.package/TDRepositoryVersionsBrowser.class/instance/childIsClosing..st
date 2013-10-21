accessing
childIsClosing: aTDToolBuilder
  aTDToolBuilder windowId == versionInfoWindowId
    ifTrue: [ versionInfoWindowId := nil ].
  aTDToolBuilder windowId == versionInfoSummaryWindowId
    ifTrue: [ versionInfoSummaryWindowId := nil ]