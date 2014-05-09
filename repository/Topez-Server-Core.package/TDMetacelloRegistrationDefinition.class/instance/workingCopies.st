accessing
workingCopies
  | version workingCopies |
  version := self registration projectSpec version.
  workingCopies := version packages collect: [ :pkg | pkg workingCopy ].
  workingCopies add: self registration projectSpec projectPackage workingCopy.
  ^ workingCopies reject: [ :each | each isNil ]