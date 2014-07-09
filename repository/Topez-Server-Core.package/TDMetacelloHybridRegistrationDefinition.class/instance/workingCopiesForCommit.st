accessing
workingCopiesForCommit
  "should get the workingCopies from the baseline and exclude the configurationOf"

  "Baseline working copy can be included, since it is not updated post commit"

  | version workingCopies |
  version := self baselineProjectSpec versionOrNil.
  version ifNil: [ ^ #() ].
  workingCopies := version packages collect: [ :pkg | pkg workingCopy ].
  workingCopies add: self projectSpec projectPackage workingCopy.
  ^ workingCopies reject: [ :each | each isNil ]