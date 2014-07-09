accessing
workingCopiesForCommit
  | version workingCopies |
  version := self projectSpec versionOrNil.
  version
    ifNil: [ 
      "project has been unloaded from image"
      ^ #() ].
  workingCopies := version packages collect: [ :pkg | pkg workingCopy ].
  self projectSpec isBaselineOfProjectSpec
    ifTrue: [ 
      "Baseline working copy can be included, since it is not updated post commit"
      workingCopies add: self projectSpec projectPackage workingCopy ].
  ^ workingCopies reject: [ :each | each isNil ]