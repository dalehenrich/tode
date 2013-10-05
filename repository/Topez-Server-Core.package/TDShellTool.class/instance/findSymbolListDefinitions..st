as yet unclassified
findSymbolListDefinitions: symbolListName
  "find symbolListName <category-name>"

  ^ (TDSymbolDictionaryDefinition new symbolListNameName: symbolListName)
    classDefinitions