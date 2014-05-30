testing
isDirty
  isDirty ifNil: [ isDirty := self isGitDirty | self isImageDirty ].
  ^ isDirty