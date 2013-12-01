validation
validateNode: nodePath modificationTime: modificationTime
  | node |
  node := self topez lookup: nodePath.
  self assert: node modificationTime = modificationTime