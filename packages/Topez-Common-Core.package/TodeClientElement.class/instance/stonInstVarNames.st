as yet unclassified
stonInstVarNames
  | ar |
  ar := self class allInstVarNames.
  ar removeAll: self excludedInstVarNames.
  ^ ar