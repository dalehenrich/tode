actions-concrete
concreteRevertProjectUsing: aProjectTool registration: aProjectRegistration
  | dirtyPackageVersions packageNames projectClassName |
  dirtyPackageVersions := Set new.
  packageNames := Set new.
  aProjectRegistration workingCopies
    do: [ :wc | 
      wc modified
        ifTrue: [ 
          packageNames add: wc packageName.
          dirtyPackageVersions
            addAll: (wc ancestry ancestors collect: [ :each | each name ]) ] ].
  [ 
  | loads |
  [ self concreteGetProjectUsing: aProjectTool registration: aProjectRegistration ]
    on: MetacelloSkipDirtyPackageLoad
    do: [ :ex | ex resume: false ].
  aProjectRegistration loads
    ifNotNil: [ :loadList | loads := loadList ]
    ifNil: [ loads := 'default' ].
  self projectSpec hasClassName
    ifTrue: [ projectClassName := self projectSpec className ]
    ifFalse: [ projectClassName := nil ].
  ^ aProjectTool
    projectLoad: self projectName
    doGet: true
    gsDeployer: #'bulk'
    selector: aProjectRegistration projectSelector
    repositoryDescription: aProjectRegistration repositoryDescription
    className: projectClassName
    loads: loads
    version: aProjectRegistration configurationVersionString
    onConflict: #'useNew'
    onDowngrade: #'useNew'
    onLock: #'honor'
    onUpgrade: #'useNew'
    ignoreImage: false
    silently: false
    cacheRepository: nil
    repositoryOverrides: nil ]
    on: MetacelloIgnorePackageLoaded , MetacelloSkipDirtyPackageLoad , Warning
    do: [ :ex | 
      | spec dirtyVersion dirtyPackage file |
      "force load of modified packages"
      (ex isKindOf: Warning)
        ifTrue: [ ex resume ].
      spec := ex packageSpec.
      file := spec getFile.
      dirtyVersion := dirtyPackageVersions includes: file.
      (ex isKindOf: MetacelloSkipDirtyPackageLoad)
        ifTrue: [ ex resume: dirtyVersion not ].
      dirtyPackage := packageNames includes: spec name.
      (dirtyVersion or: [ file isNil and: [ dirtyPackage ] ])
        ifTrue: [ ex resume: ex packageSpec workingCopy modified ]
        ifFalse: [ ex resume: false ] ]