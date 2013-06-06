as yet unclassified
= aTDDefinition
  super = aTDDefinition
    ifFalse: [ ^ false ].
  ^ self classMethods = aTDDefinition classMethods
    and: [ self instanceMethods = aTDDefinition instanceMethods ]