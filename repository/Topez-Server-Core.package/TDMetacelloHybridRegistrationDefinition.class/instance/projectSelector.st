accessing
projectSelector
  "this is probably configuration but depends upon context"

  self halt.
  ^ self projectSpec isBaselineOfProjectSpec
    ifTrue: [ #'baseline:' ]
    ifFalse: [ #'configuration:' ]