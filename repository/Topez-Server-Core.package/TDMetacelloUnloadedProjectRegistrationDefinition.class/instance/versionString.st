accessing
versionString
  versionString
    ifNil: [ 
      versionString := self projectSpec isBaselineOfProjectSpec
        ifTrue: [ '' ]
        ifFalse: [ self projectSpec versionString ] ].
  ^ versionString