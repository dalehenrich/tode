actions
defaultRepositoryGroup: listElement selectedIndex: index
  | repos |
  repos := MCRepositoryGroup default repositories
    sort: [ :a :b | a description < b description ].
  self mcTool mrBrowseRepositories: repos label: 'Repositories'.
  ^ true