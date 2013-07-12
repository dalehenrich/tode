as yet unclassified
addTempValueTo: tempSymbolDictionary
  "add entry to tempSymbolDictionary if the receiver is expected to provide a temp value for expressions evaluated in parent context"

  tempSymbolDictionary at: self name asSymbol put: self dotSelfObject