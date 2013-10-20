actions
workingCopyRepositoryGroup: listElement selectedIndex: index
  | wc |
  index = 0
    ifTrue: [ 
      defaultRepositoryWindowId := self mcTool
        mrBrowseRepositories: [ MCRepositoryGroup default repositories ]
        parentBuilder: self
        windowId: defaultRepositoryWindowId
        label: 'Repositories'.
      ^ true ].
  wc := self workingCopies at: index.
  repositoryGoupWindowId := self mcTool
    mrBrowseRepositorGroup: wc
    parentBuilder: self
    windowId: repositoryGoupWindowId
    label: wc package name , ' repository group'.
  ^ true