actions-concrete
concreteLoadProjectUsing: aProjectTool registration: aProjectRegistration
  | loads |
  aProjectRegistration loads
    ifNotNil: [ :loadList | loads := loadList ]
    ifNil: [ loads := 'default' ].
  ^ aProjectTool
    projectLoad: self projectName
    selector: aProjectRegistration projectSelector
    repositoryDescription: aProjectRegistration repositoryDescription
    loads: loads
    version: aProjectRegistration configurationVersionString