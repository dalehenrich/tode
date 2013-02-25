as yet unclassified
configurationOfDefinition: aDefinition
  | pkgDef |
  pkgDef := aDefinition packageOf.
  ^ self _configurationGivenPackageDefinition: pkgDef