compilation
declareUndefinedGlobals: symbols
  | undefinedSymbols |
  undefinedSymbols := self compilationSymbolList
    objectNamed: #'UndefinedSymbols' symbols
    do: [ :sym | | s |
      (s := undefinedSymbols at: sym otherwise: nil) ifNil: [ s := Set new.
          undefinedSymbols at: sym put: s ] ].
  ^ self compilationSymbolList objectNamed: #'UndefinedSymbolList'