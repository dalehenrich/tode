accessing
childIsClosing: aTDToolBuilder
  aTDToolBuilder windowId == repositoryGoupWindowId
    ifTrue: [ repositoryGoupWindowId := nil ].
  aTDToolBuilder windowId == versionInfoWindowId
    ifTrue: [ versionInfoWindowId := nil ].
  aTDToolBuilder windowId == defaultRepositoryWindowId
    ifTrue: [ defaultRepositoryWindowId := nil ]