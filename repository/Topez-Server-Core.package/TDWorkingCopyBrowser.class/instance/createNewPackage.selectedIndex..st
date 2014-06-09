actions
createNewPackage: listElement selectedIndex: index
  | packageName repositoryList repositoryDescriptions repository package |
  index = 0
    ifTrue: [ 
      packageName := 'new package'.
      repositoryList := MCRepositoryGroup default repositories asArray ]
    ifFalse: [ 
      | wc |
      wc := self workingCopies at: index.
      packageName := wc packageName.
      repositoryList := wc repositoryGroup repositories asArray ].
  packageName := (GsTextInteraction
    prompt: 'Enter new package name'
    template: packageName) signal.
  packageName ifNil: [ ^ false ].
  package := self mcTool mccreate: packageName.
  repositoryList := (repositoryList
    reject: [ :repo | repo = MCCacheRepository default ])
    sort: [ :a :b | a description <= b description ].
  repositoryDescriptions := repositoryList collect: [ :repo | repo description ].
  repository := (GsChoiceInteraction
    prompt: 'Select package repository'
    labels: repositoryDescriptions
    values: repositoryList) signal.
  repository ifNil: [ ^ true ].
  package repositoryGroup addRepository: repository.
  ^ true