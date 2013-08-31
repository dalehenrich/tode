as yet unclassified
cypSave: packageName to: cypressRepository
  | package packageStructure res |
  package := CypressPackageDefinition named: packageName.
  packageStructure := CypressPackageStructure fromPackage: package.
  res := cypressRepository writePackageStructure: packageStructure.
  self markWorkingCopyFor: packageName modified: false.
  ^ res