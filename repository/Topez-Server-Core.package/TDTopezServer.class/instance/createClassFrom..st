class creation
createClassFrom: aClassDefinitionString
  | newClass |
  GsDeployer
    bulkMigrate: [ newClass := self applicationEnvironment evaluate: aClassDefinitionString ].
  self resetAllGlobalNames.
  ^ newClass