as yet unclassified
printOn: aStream
  aStream
    nextPutAll: self class name asString;
    nextPut: $(;
    nextPutAll: self className asString;
    nextPutAll: '::';
    nextPutAll: self oop asString;
    nextPut: $)