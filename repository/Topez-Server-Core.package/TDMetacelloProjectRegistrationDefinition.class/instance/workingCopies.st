accessing
workingCopies
  | version workingCopies |
  self isLoadedInImage
    ifFalse: [ ^ #() ].
  version := self projectSpec version.
  workingCopies := version packages collect: [ :pkg | pkg workingCopy ].
  workingCopies add: self projectSpec projectPackage workingCopy.
  ^ workingCopies reject: [ :each | each isNil ]