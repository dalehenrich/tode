private
validate: sourceNodePath notEquals: destNodePath with: aTDSTONRsync
  | source dest |
  source := self topez lookup: sourceNodePath.
  dest := self topez lookup: destNodePath.
  self deny: (aTDSTONRsync nodeEqual: source to: dest)