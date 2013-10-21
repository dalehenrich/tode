as yet unclassified
mcunload
  "mc unload <packageName>
      unload @<workingCopy-path>
  "

  | packageName workingCopy |
  packageName := tokens at: 2.
  workingCopy := self resolveWorkingCopyReference: packageName.
  ^ self mcunloadWorkingCopy: workingCopy