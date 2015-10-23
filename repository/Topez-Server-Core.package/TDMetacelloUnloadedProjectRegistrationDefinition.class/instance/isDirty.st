testing
isDirty
  self isValid
    ifFalse: [ ^ false ].
  isDirty ifNil: [ isDirty := self isGitDirty ].
  ^ isDirty