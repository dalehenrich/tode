as yet unclassified
= aTDClassCategoryDefinition
  aTDClassCategoryDefinition species = self species
    ifFalse: [ ^ false ].
  ^ self categoryName = aTDClassCategoryDefinition categoryName