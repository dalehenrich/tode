accessing
workingCopies
  | version |
  version := self registration projectSpec version.
  ^ (version packages collect: [ :pkg | pkg workingCopy ])
    reject: [ :each | each isNil ]