actions-concrete
concreteLoadProjectUsing: aProjectTool registration: aProjectRegistration
  | loads entryLoads |
  aProjectRegistration loads
    ifNotNil: [ :loadList | loads := loadList ]
    ifNil: [ loads := 'default' ].
  entryLoads := self loads.
  entryLoads = loads
    ifFalse: [ loads := entryLoads ].
  ^ aProjectTool
    projectLoad: self projectName
    selector: aProjectRegistration projectSelector
    repositoryDescription: aProjectRegistration repositoryDescription
    loads: loads
    version: aProjectRegistration configurationVersionString