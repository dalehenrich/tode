actions
basicLoadProjectUsing: aProjectTool registration: aProjectRegistration
  | loads |
  aProjectRegistration loads
    ifNotNil: [ :loadList | loads := loadList ]
    ifNil: [ loads := {'default'} ].
  self loads
    ifNotNil: [ :entryLoads | 
      entryLoads isArray
        ifTrue: [ loads := loads , entryLoads ]
        ifFalse: [ loads := loads , {entryLoads} ] ].
  ^ aProjectTool
    projectLoad: self projectName
    selector: aProjectRegistration projectSelector
    repositoryDescription: aProjectRegistration repositoryDescription
    className: aProjectRegistration projectSpecClassName
    loads: loads
    version: aProjectRegistration configurationVersionString