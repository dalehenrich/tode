as yet unclassified
commitPackages: packageSpecs commitMessage: commitMessage
  | workingCopies |
  workingCopies := packageSpecs collect: [ :pkgSpec | pkgSpec workingCopy ].
  ^ self commitWorkingCopies: workingCopies commitMessage: commitMessage