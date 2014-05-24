accessing
projectSelector
  ^ self projectSpec isBaselineOfProjectSpec
    ifTrue: [ #'baseline:' ]
    ifFalse: [ #'configuration:' ]