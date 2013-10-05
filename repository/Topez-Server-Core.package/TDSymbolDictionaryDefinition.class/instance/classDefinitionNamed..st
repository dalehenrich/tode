accessing
classDefinitionNamed: aClassName
  ^ TDSymbolDictionaryClassDefinition new
    username: self username;
    className: aClassName;
    symbolDictionary: self;
    yourself