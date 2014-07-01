instance creation
isHybridRegistration: aMetacelloProjectRegistration
  | isHybrid projectSpec version |
  isHybrid := false.
  projectSpec := aMetacelloProjectRegistration projectSpec.
  projectSpec versionOrNil ifNil: [ ^ false ].
  projectSpec version spec
    projectDo: [ :project | 
      | ref |
      ref := project projectReference.
      isHybrid := ref isBaselineOfProjectSpec ]
    packageDo: [ :pkg |  ]
    groupDo: [ :group |  ].
  ^ isHybrid