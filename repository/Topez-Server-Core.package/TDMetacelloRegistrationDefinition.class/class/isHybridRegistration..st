instance creation
isHybridRegistration: aMetacelloProjectRegistration
  | isHybrid projectSpec version |
  isHybrid := false.
  projectSpec := aMetacelloProjectRegistration projectSpec.
  projectSpec version spec
    projectDo: [ :project | 
      | ref |
      ref := project projectReference.
      isHybrid := ref isBaselineOfProjectSpec ]
    packageDo: [ :pkg | ^ false ]
    groupDo: [ :group | ^ false ].
  ^ isHybrid