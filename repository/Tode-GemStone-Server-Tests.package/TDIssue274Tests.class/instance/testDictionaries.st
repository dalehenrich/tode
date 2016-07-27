tests
testDictionaries
  {KeyValueDictionary.
  StringKeyValueDictionary.
  CanonicalStringDictionary.
  IdentityKeyValueDictionary.
  GsMethodDictionary.
  FastIdentityKeyValueDictionary.
  IdentityDictionary.
  SymbolDictionary.
  LanguageDictionary.
  SessionTemps.
  SymbolKeyValueDictionary.
  KeySoftValueDictionary.
  IdentityKeySoftValueDictionary.
  RcKeyValueDictionary.
  Dictionary.
  HttpFormDictionary.
  PluggableDictionary}
    do: [ :dictinoaryClass | 
      | dict |
      dict := dictinoaryClass new
        at: #'x' put: 'x';
        at: #'y' put: 'y';
        at: #'z' put: 'z';
        yourself.
      dict
        printStringTodeLimitedTo: 2;
        printStringTodeLimitedTo: 100 ]