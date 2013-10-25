as yet unclassified
tempSymbolList
  | tempSymbolList tempSymbolDictionary |
  tempSymbolList := SymbolList new.
  tempSymbolDictionary := SymbolDictionary new.
  tempSymbolList add: tempSymbolDictionary.
  self
    childrenAndNamesDo: [ :child :childName | child ifNotNil: [ child addTempValueTo: tempSymbolDictionary ] ].
  ^ tempSymbolList