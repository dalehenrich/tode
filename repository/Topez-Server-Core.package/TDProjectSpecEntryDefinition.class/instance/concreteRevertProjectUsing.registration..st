actions-concrete
concreteRevertProjectUsing: aProjectTool registration: aProjectRegistration
  | dirtyPackageVersions packageNames projectClassName projectLoadSpec |
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
    do: [ :ex | 
      "get ends up with different form of projectSpec ... baseline unconditional 
       fetch and load"
      ex resume: false ].
  aProjectRegistration loads
    ifNotNil: [ :loadList | loads := loadList ]
    ifNil: [ loads := 'default' ].
  projectClassName := aProjectRegistration projectSpecClassName.
  projectLoadSpec := TDMetacelloToolProjectLoadSpec new
    projectLoad: self projectName;
    projectSelector: aProjectRegistration projectSelector;
    repositoryDescriptionescription: aProjectRegistration repositoryDescription;
    className: projectClassName;
    loads: loads;
    version: aProjectRegistration configurationVersionString;
    onDowngrade: #'useIncoming';
    onUpgrade: #'useIncoming';
    yourself.
  ^ aProjectTool projectLoadFromSpec: projectLoadSpec ]
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