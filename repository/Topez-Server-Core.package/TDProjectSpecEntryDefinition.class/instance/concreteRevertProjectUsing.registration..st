actions-concrete
concreteRevertProjectUsing: aProjectTool registration: aProjectRegistration
  [ 
  | loads |
  self concreteGetProjectUsing: aProjectTool registration: aProjectRegistration.
  aProjectRegistration loads
    ifNotNil: [ :loadList | loads := loadList ]
    ifNil: [ loads := 'default' ].
  ^ aProjectTool
    projectLoad: self projectName
    doGet: true
    selector: aProjectRegistration projectSelector
    repositoryDescription: aProjectRegistration repositoryDescription
    loads: loads
    version: aProjectRegistration configurationVersionString
    onConflict: #'useIncoming'
    onDowngrade: #'useIncoming'
    onLock: #'honor'
    onUpgrade: #'useIncoming'
    ignoreImage: false
    silently: false
    cacheRepository: nil
    repositoryOverrides: nil ]
    on: MetacelloIgnorePackageLoaded , MetacelloSkipDirtyPackageLoad , Warning
    do: [ :ex | 
      "force load of modified packages"
      (ex isKindOf: Warning)
        ifTrue: [ ex resume ].
      (ex isKindOf: MetacelloSkipDirtyPackageLoad)
        ifTrue: [ ex resume: false ].
      ex resume: ex packageSpec workingCopy modified ]