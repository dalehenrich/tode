as yet unclassified
findPackageDefinitions: findTokens
  "find package <package-name>"

  | packageName |
  packageName := findTokens at: 2.
  ^ (TDPackageDefinition new packageName: packageName) classDefinitions