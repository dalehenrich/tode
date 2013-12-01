validation
validateModificationTimes: tmpSrcNode path: sourceNodePath between: tmpDestNode path: destNodePath match: aBool
  | source dest |
  source := self
    lookup: sourceNodePath
    in: tmpSrcNode
    ifAbsent: [ self error: 'source path not found: ' , sourceNodePath ].
  dest := self
    lookup: destNodePath
    in: tmpDestNode
    ifAbsent: [ self error: 'destination path not found: ' , destNodePath ].
  aBool
    ifTrue: [ 
      "times should match"
      self assert: source modificationTime = dest modificationTime ]
    ifFalse: [ 
      "times should not match"
      self deny: source modificationTime = dest modificationTime ]