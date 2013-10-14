as yet unclassified
findPackageDefinitions: packageName
  "find package <package-name>"

  ^ (TDMcPackageDefinition new packageName: packageName) classDefinitions