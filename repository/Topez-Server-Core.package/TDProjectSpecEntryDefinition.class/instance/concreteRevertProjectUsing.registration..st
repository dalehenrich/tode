actions-concrete
concreteRevertProjectUsing: aProjectTool registration: aProjectRegistration
  [ 
  self concreteGetProjectUsing: aProjectTool registration: aProjectRegistration.
  ^ self
    concreteLoadProjectUsing: aProjectTool
    registration: aProjectRegistration ]
    on: MetacelloIgnorePackageLoaded , MetacelloSkipDirtyPackageLoad , Warning
    do: [ :ex | 
      "force load of modified packages"
      (ex isKindOf: Warning)
        ifTrue: [ ex resume ].
      (ex isKindOf: MetacelloSkipDirtyPackageLoad)
        ifTrue: [ ex resume: false ].
      ex resume: ex packageSpec workingCopy modified ]