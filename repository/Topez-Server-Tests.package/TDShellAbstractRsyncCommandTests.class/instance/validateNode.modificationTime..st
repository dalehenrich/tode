validation
validateNode: nodePath modificationTime: modificationTime
  | node x |
  node := self topez lookup: nodePath.
  self assert: (x := node modificationTime) = modificationTime