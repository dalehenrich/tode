validation
verifyNode: nodePath modificationTimeGreaterThan: oldestModificationTime by: duration
  | node |
  node := self topez lookup: nodePath.
  self assert: node modificationTime > (oldestModificationTime + duration)