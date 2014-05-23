accessing
versionString
  ^ self projectSpec isBaselineOfProjectSpec
    ifTrue: [ '' ]
    ifFalse: [ self projectSpec versionString ]