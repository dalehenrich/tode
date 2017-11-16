*tode-gemstone-server-base
todeSymbolList
  "Used for looking up globals in the tode environment when the environment under development does not have tode installed directly"

  ^ SessionTemps current
    at: #'TDTopezServer_TodeSymbolList'
    otherwise: GsCurrentSession currentSession symbolList