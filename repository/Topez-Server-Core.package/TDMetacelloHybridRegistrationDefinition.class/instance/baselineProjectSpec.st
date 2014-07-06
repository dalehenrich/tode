accessing
baselineProjectSpec
  | projectSpec |
  projectSpec := self projectSpec.
  projectSpec versionOrNil ifNil: [ ^ nil ].
  projectSpec version spec
    projectDo: [ :project | 
      | ref |
      ref := project projectReference.
      ref isBaselineOfProjectSpec
        ifTrue: [ ^ project projectReference ] ]
    packageDo: [ :pkg |  ]
    groupDo: [ :group |  ].
  ^ nil