class creation
createClassFrom: aClassDefinitionString
  | newClass |
  newClass := self applicationEnvironment evaluate: aClassDefinitionString.
  self resetAllGlobalNames.
  ^ newClass