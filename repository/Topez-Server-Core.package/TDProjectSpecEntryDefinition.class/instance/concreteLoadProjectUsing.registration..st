actions-concrete
concreteLoadProjectUsing: aProjectTool registration: aProjectRegistration
  | loads entryLoads className |
  aProjectRegistration loads
    ifNotNil: [ :loadList | loads := loadList ]
    ifNil: [ loads := 'default' ].
  entryLoads := self loads.
  entryLoads = loads
    ifFalse: [ loads := entryLoads ].
  self projectSpec hasClassName
    ifTrue: [ className := self projectSpec className ]
    ifFalse: [ className := nil ].
  ^ aProjectTool
    projectLoad: self projectName
    selector: aProjectRegistration projectSelector
    repositoryDescription: aProjectRegistration repositoryDescription
    className: className
    loads: loads
    version: aProjectRegistration configurationVersionString