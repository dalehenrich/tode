instance creation
isHybridRegistration: aMetacelloProjectRegistration
  | projectSpec version |
  projectSpec := aMetacelloProjectRegistration projectSpec.
  version := aMetacelloProjectRegistration projectVersion ifNil: [ ^ false ].
  version spec
    projectDo: [ :project | 
      | ref |
      ref := project projectReference.
      ref isBaselineOfProjectSpec
        ifTrue: [ ^ true ] ]
    packageDo: [ :pkg |  ]
    groupDo: [ :group |  ].
  ^ false