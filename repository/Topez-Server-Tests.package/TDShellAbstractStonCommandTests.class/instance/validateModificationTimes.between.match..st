validation
validateModificationTimes: sourceNodePath between: destNodePath match: aBool
  | source dest |
  source := self topez lookup: sourceNodePath.
  dest := self topez lookup: destNodePath.
  aBool
    ifTrue: [ 
      "times should match"
      self assert: source modificationTime = dest modificationTime ]
    ifFalse: [ 
      "times should not match"
      self deny: source modificationTime = dest modificationTime ]