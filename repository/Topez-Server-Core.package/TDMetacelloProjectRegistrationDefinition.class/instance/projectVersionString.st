accessing
projectVersionString
  ^ self projectSpec isBaselineOfProjectSpec
    ifTrue: [ nil ]
    ifFalse: [ self projectSpec versionString ]