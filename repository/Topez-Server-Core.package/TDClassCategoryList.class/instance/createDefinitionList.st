as yet unclassified
createDefinitionList
  | categoryDict defs |
  categoryDict := ClassOrganizer cachedOrganizer categories.
  defs := categoryDict keys
    collect: [ :categoryName | TDClassCategoryDefinition new categoryNameName: categoryName ].
  defs sort: [ :a :b | a label <= b label ].
  ^ defs