compilation
declareUndefinedGlobals: symbols
  | undefinedSymbols |
  undefinedSymbols := self methodCompilationSymbolList
    objectNamed: #'UndefinedGlobals'.
  undefinedSymbols ifNil: [ ^ nil ].
  symbols do: [ :sym | | s |
      (s := undefinedSymbols at: sym otherwise: nil) ifNil: [ s := Set new.
          undefinedSymbols at: sym put: s ] ].
  ^ self methodCompilationSymbolList