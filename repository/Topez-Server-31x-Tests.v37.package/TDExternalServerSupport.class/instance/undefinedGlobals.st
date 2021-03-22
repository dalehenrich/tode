accessing
undefinedGlobals
  ^ undefinedGlobals ifNil: [ undefinedGlobals := SymbolDictionary new
        name: #'UndefinedGlobals';
        yourself ]