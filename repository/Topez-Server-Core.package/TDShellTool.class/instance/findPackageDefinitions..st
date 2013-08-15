as yet unclassified
findPackageDefinitions: packageName
  "find package <package-name>"

  ^ (TDPackageDefinition new packageName: packageName) classDefinitions