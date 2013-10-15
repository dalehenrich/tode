actions
workingCopyRepositoryGroup: listElement selectedIndex: index
  | wc |
  index = 0
    ifTrue: [ 
      self mcTool
        mrBrowseRepositories: MCRepositoryGroup default repositories
        label: 'Repositories'.
      ^ true ].
  wc := self workingCopies at: index.
  self mcTool
    mrBrowseRepositorGroup: wc
    label: wc package name , ' repository group'.
  ^ true