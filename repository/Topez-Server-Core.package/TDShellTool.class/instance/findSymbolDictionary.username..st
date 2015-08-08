find
findSymbolDictionary: symbolDictionaryName username: username
  "find symbolDictionary <dictionary-name>"

  ^ (TDSymbolDictionaryDefinition new
    symbolDictionaryName: symbolDictionaryName;
    username: username;
    yourself) symbolDictionary