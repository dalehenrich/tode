validation
validate: tmpSrcNode path: sourceNodePath equals: tmpDestNode path: destNodePath with: aTDSTONRsync
  | source dest |
  source := self
    lookup: sourceNodePath
    in: tmpSrcNode
    ifAbsent: [ self error: 'source path not found: ' , sourceNodePath ].
  dest := self
    lookup: destNodePath
    in: tmpDestNode
    ifAbsent: [ self error: 'destination path not found: ' , destNodePath ].
  self assert: (aTDSTONRsync nodeEqual: source to: dest)