accessing
configurationVersionString
  ^ self projectSpec isBaselineOfProjectSpec
    ifTrue: [ nil ]
    ifFalse: [ self currentVersionString ]