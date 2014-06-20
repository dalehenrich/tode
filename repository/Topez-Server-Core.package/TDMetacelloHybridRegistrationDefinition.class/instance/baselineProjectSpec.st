accessing
baselineProjectSpec
  | projectSpec |
  projectSpec := self projectSpec.
  projectSpec version spec
    projectDo: [ :project | ^ project projectReference ]
    packageDo: [ :pkg |  ]
    groupDo: [ :group |  ].
  ^ nil