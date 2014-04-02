as yet unclassified
findPackageDefinitionsExact: packageName
  "find package <package-name>"

  ^ (TDMcPackageDefinition new packageName: packageName) classDefinitions