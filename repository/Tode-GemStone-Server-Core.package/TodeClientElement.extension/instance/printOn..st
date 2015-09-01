*tode-gemstone-server-core
printOn: aStream
  aStream
    nextPutAll: self class name asString , '(' , self asOop printString , ')'