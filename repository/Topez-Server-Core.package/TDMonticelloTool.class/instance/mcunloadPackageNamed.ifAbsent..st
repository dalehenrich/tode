as yet unclassified
mcunloadPackageNamed: aPackageName ifAbsent: absentBlock
  | workingCopy |
  workingCopy := self
    resolveWorkingCopyReference: aPackageName
    ifAbsent: [ ^ absentBlock value ].
  ^ self mcunloadWorkingCopy: workingCopy