as yet unclassified
mcversion: packageName
  | workingCopy |
  workingCopy := self resolveWorkingCopyReference: packageName.
  ^ workingCopy