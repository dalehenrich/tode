as yet unclassified
findCategoryDefinitions
  "find categories"

  ^ (ClassOrganizer cachedOrganizer categories keys
    collect: [ :category | TDClassCategoryDefinition new categoryName: category ])
    sorted: [ :a :b | a categoryName <= b categoryName ]