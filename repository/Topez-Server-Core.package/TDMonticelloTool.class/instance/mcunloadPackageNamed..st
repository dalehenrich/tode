as yet unclassified
mcunloadPackageNamed: aPackageName
  | workingCopy |
  workingCopy := self resolveWorkingCopyReference: aPackageName.
  ^ self mcunloadWorkingCopy: workingCopy