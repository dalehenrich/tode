actions-concrete
concreteRevertProjectUsing: aProjectTool registration: aProjectRegistration
  | projectPackageNames |
  projectPackageNames := aProjectRegistration workingCopies
    collect: [ :wc | wc packageName ].
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
        ifTrue: [ 
          | skipDirtyPackageLoad |
          skipDirtyPackageLoad := (projectPackageNames
            includes: ex packageSpec name) not.
          ex resume: skipDirtyPackageLoad ].
      (projectPackageNames includes: ex packageSpec name)
        ifTrue: [ ex resume: ex packageSpec workingCopy modified ]
        ifFalse: [ ex resume: false ] ]