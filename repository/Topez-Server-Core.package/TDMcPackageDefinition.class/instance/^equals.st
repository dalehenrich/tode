as yet unclassified
= aTDPackageDefinition
  aTDPackageDefinition species = self species
    ifFalse: [ ^ false ].
  ^ self packageName = aTDPackageDefinition packageName