as yet unclassified
mcrecompile
  "mc recompile <pkg-name>
      recompile @<workingCopy-path>
  "

  | workingCopy packageName |
  packageName := tokens at: 2.
  workingCopy := self resolveWorkingCopyReference: packageName.
  ^ self mcrecompileWorkingCopy: workingCopy