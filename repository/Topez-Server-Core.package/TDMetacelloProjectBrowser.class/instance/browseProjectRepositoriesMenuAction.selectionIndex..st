menu actions
browseProjectRepositoriesMenuAction: listElement selectionIndex: selectionIndex
  | registration block mcTool |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  block := [ 
  | repos |
  repos := Set new.
  registration workingCopies
    do: [ :wc | 
      | rg |
      rg := wc repositoryGroup.
      repos addAll: rg repositories ].
  repos asArray sorted: [ :a :b | a description <= b description ] ].
  mcTool := self mcTool.
  mcTool
    mrBrowseRepositories: block
    label: 'Repositories for ' , registration projectName.
  ^ true