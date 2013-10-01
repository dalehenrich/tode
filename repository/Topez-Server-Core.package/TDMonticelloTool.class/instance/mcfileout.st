as yet unclassified
mcfileout
  "
  mc fileout <directory-path> <package-name> [<package-name>]...
     fileout <directory-path> @<workingCopy-path> [@<workingCopy-path>]...
  "

  | directoryPath packageNames |
  directoryPath := tokens at: 2.
  packageNames := tokens copyFrom: 3 to: tokens size.
  ^ self mcfileout: directoryPath packageNames: packageNames