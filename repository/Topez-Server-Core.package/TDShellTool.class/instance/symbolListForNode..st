as yet unclassified
symbolListForNode: aNode
  | tempSymbolList tempSymbolDictionary |
  tempSymbolList := SymbolList new.
  tempSymbolDictionary := SymbolDictionary new.
  tempSymbolList add: tempSymbolDictionary.
  aNode
    childrenAndNamesDo: [ :child :childName | tempSymbolDictionary at: child name asString asSymbol put: child dotSelfObject ].
  ^ tempSymbolList