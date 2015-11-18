project api
projectBrowseProjectRepositoriesFor: registration
  | block |
  block := [ 
  | repos |
  repos := Set new.
  registration workingCopies
    do: [ :wc | 
      | rg |
      rg := wc repositoryGroup.
      repos addAll: rg repositories ].
  repos add: registration repository.
  repos asArray sorted: [ :a :b | a description <= b description ] ].
  ^ (self topez toolInstanceFor: 'mc')
    mrBrowseRepositories: block
    label: 'Repositories for ' , registration projectName