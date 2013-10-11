as yet unclassified
createDefinitionList
  | categoryDict defs |
  categoryDict := ClassOrganizer cachedOrganizer categories.
  defs := categoryDict keys
    collect: [ :categoryName | TDClassCategoryDefinition new categoryName: categoryName ].
  defs := defs asArray sort: [ :a :b | a label <= b label ].
  ^ defs