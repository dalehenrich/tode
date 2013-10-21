actions
defaultRepositoryGroup: listElement selectedIndex: index
  defaultRepositoryWindowId := self mcTool
    mrBrowseRepositories: [ 
      MCRepositoryGroup default repositories
        sort: [ :a :b | a description < b description ] ]
    parentBuilder: self
    windowId: defaultRepositoryWindowId
    label: 'Repositories'.
  ^ true