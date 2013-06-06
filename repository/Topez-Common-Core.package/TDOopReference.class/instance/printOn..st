as yet unclassified
printOn: aStream
  aStream
    nextPutAll: self class name asString;
    nextPut: $(;
    nextPutAll: self theClassName asString;
    nextPutAll: '::';
    nextPutAll: self oop asString;
    nextPut: $)