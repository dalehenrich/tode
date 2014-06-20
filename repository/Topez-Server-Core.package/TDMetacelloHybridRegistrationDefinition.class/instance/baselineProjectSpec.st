accessing
baselineProjectSpec
  | projectSpec |
  projectSpec := self projectSpec.
  projectSpec version spec
    projectDo: [ :project | 
      | ref |
      ref := project projectReference.
      ref isBaselineOfProjectSpec
        ifTrue: [ ^ project projectReference ] ]
    packageDo: [ :pkg |  ]
    groupDo: [ :group |  ].
  ^ nil