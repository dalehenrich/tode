actions
workingCopyRepositoryGroup: listElement selectedIndex: index
  | wc browser |
  index = 0
    ifTrue: [ 
      self mcTool
        mrBrowseRepositories: MCRepositoryGroup default repositories
        label: 'Repositories'.
      ^ true ].
  wc := self workingCopies at: index.
  self mcTool
    mrBrowseRepositories: wc repositoryGroup repositories
    label: wc package name , ' repository group'.
  ^ true