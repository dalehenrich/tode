compilation
compile: aString inContext: compilationContext symbolList: symbolList envId: envId
  ^ self
    _compile: aString
    inContext: compilationContext
    symbolList: symbolList
    envId: envId