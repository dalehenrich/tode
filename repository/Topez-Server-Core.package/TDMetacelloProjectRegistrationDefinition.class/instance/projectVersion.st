accessing
projectVersion
  ^ self projectSpec isBaselineOfProjectSpec
    ifTrue: [ nil ]
    ifFalse: [ self projectSpec versionOrNil ]