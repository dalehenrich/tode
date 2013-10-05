as yet unclassified
testpackage
  "test package <package-name>"

  | packageName |
  packageName := tokens at: 2.
  ^ self testpackage: packageName