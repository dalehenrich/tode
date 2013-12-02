validation
validateModificationTimes: sourceNodePath between: destNodePath match: aBool
  | source dest x y |
  source := self topez lookup: sourceNodePath.
  dest := self topez lookup: destNodePath.
  aBool
    ifTrue: [ 
      "times should match"
      self assert: (x := source modificationTime) = (y := dest modificationTime) ]
    ifFalse: [ 
      "times should not match"
      self deny: (x := source modificationTime) = (y := dest modificationTime) ]