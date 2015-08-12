as yet unclassified
printOn: aStream
  aStream
    nextPutAll: self class name asString , '(' , self asOop printString , ')'