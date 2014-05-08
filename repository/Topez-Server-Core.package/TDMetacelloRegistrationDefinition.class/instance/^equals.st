accessing
= aTDMetacelloRegistrationDefinition
  aTDMetacelloRegistrationDefinition species = self species
    ifFalse: [ ^ false ].
  ^ self projectName = aTDMetacelloRegistrationDefinition projectName