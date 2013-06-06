as yet unclassified
tempSymbolList
  | tempSymbolList tempSymbolDictionary |
  tempSymbolList := SymbolList new.
  tempSymbolDictionary := SymbolDictionary new.
  tempSymbolList add: tempSymbolDictionary.
  self
    childrenAndNamesDo: [ :child :childName | tempSymbolDictionary at: child name asString asSymbol put: child dotSelfObject ].
  ^ tempSymbolList