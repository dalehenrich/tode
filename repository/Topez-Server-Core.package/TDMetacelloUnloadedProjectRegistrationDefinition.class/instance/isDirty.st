testing
isDirty
  isDirty ifNil: [ isDirty := self isGitDirty ].
  ^ isDirty