validation
verifyNode: nodePath modificationTimeLessThan: oldestModificationTime by: duration
  | node x |
  node := self topez lookup: nodePath.
  self assert: node modificationTime < (x := oldestModificationTime + duration)