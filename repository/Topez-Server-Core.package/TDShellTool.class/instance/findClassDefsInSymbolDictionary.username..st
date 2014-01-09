as yet unclassified
findClassDefsInSymbolDictionary: symbolDictionaryName username: username
  ^ (TDSymbolDictionaryDefinition new
    symbolDictionaryName: symbolDictionaryName;
    username: username;
    yourself) classDefinitions