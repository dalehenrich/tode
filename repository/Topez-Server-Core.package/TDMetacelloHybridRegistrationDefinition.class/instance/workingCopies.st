accessing
workingCopies
  "should get the workingCopies from the baseline and include the configurationOf"

  | version workingCopies |
  self halt.
  self isLoadedInImage
    ifFalse: [ ^ #() ].
  version := self projectSpec version.
  workingCopies := version packages collect: [ :pkg | pkg workingCopy ].
  workingCopies add: self projectSpec projectPackage workingCopy.
  ^ workingCopies reject: [ :each | each isNil ]