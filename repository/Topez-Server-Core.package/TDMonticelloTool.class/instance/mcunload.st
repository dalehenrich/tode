as yet unclassified
mcunload
  "mc unload <packageName>
      unload @<workingCopy-path>
  "

  | packageName |
  packageName := tokens at: 2.
  ^ self mcunloadPackageNamed: packageName