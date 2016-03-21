accessing
indexableSizeFor: parentObj
  ^ parentObj size + parentObj class allInstVarNames size
    min: self indexableWindowSize