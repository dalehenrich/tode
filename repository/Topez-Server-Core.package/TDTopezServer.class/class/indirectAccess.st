accessing
indirectAccess
  ^ (SessionTemps current at: #'TDTopezServer_TodeSymbolList' otherwise: nil)
    notNil