accessing
workingCopies
  | version workingCopies |
  version := self projectSpec version.
  workingCopies := version packages collect: [ :pkg | pkg workingCopy ].
  workingCopies add: self projectSpec projectPackage workingCopy.
  ^ workingCopies reject: [ :each | each isNil ]