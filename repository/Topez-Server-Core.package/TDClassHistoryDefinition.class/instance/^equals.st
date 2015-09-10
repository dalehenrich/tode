comparing
= aTDDefinition
  aTDDefinition species = self species
    ifFalse: [ ^ false ].
  ^ self theClass == aTDDefinition theClass