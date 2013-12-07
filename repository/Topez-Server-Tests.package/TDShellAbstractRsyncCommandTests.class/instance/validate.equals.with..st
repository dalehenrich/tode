validation
validate: sourceNodePath equals: destNodePath with: aTDSTONRsync
  | source dest |
  source := self topez lookup: sourceNodePath.
  dest := self topez lookup: destNodePath.
  self assert: (aTDSTONRsync nodeEqual: source to: dest)