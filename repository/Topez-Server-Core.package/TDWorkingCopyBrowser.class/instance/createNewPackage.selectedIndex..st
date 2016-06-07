actions
createNewPackage: listElement selectedIndex: index
  | packageName repositoryList repositoryDescriptions repository package repositoryListIndex |
  index = 0
    ifTrue: [ 
      packageName := 'new package'.
      repositoryList := MCRepositoryGroup default repositories asArray ]
    ifFalse: [ 
      | wc |
      wc := self workingCopies at: index.
      packageName := wc packageName.
      repositoryList := wc repositoryGroup repositories asArray.
      repositoryList isEmpty
        ifTrue: [ repositoryList := MCRepositoryGroup default repositories asArray ] ].
  packageName := (GsTextInteraction
    prompt: 'Enter new package name'
    template: packageName) signal.
  packageName ifNil: [ ^ false ].
  package := self mcTool mccreate: packageName.
  self newPackageBlock
    ifNotNil: [ :block | 
      block value: package.
      ^ #'refreshList' ].
  repositoryList := (repositoryList
    reject: [ :repo | repo = MCCacheRepository default ])
    sort: [ :a :b | a description <= b description ].
  repositoryDescriptions := repositoryList collect: [ :repo | repo description ].
  repositoryListIndex := (GsChoiceInteraction
    prompt: 'Select package repository'
    labels: repositoryDescriptions
    values: nil) signal.
  repositoryListIndex ifNil: [ ^ #'refreshList' ].
  repository := repositoryList at: repositoryListIndex.
  package repositoryGroup addRepository: repository.
  ^ #'refreshList'