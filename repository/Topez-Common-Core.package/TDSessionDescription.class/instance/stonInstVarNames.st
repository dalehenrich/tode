ston
stonInstVarNames
  | oc |
  oc := self class allInstVarNames asOrderedCollection.
  oc removeAll: self excludedInstVarNames.
  ^ oc