as yet unclassified
= aTDConfigurationDefinition
  aTDConfigurationDefinition species = self species
    ifFalse: [ ^ false ].
  ^ self configurationName = aTDConfigurationDefinition configurationName