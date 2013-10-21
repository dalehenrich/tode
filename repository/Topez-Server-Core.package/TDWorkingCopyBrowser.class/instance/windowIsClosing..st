tools
windowIsClosing: listElement
  super windowIsClosing: listElement.
  repositoryGoupWindowId
    ifNotNil: [ :windowId | 
      repositoryGoupWindowId := nil.
      listElement topez deleteWindowAt: windowId ].
  defaultRepositoryWindowId
    ifNotNil: [ :windowId | 
      defaultRepositoryWindowId := nil.
      listElement topez deleteWindowAt: windowId ].
  versionInfoWindowId
    ifNotNil: [ :windowId | 
      versionInfoWindowId := nil.
      listElement topez deleteWindowAt: windowId ]