validation
validateNode: nodePath modificationTime: modificationTime
  | node x |
  node := self topez lookup: nodePath.
  self assert: node modificationTime = modificationTime