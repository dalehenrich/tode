printing
printOn: aStream
  testSelector ifNotNil: [ ^ super printOn: aStream ].
  aStream nextPutAll: 'a' , self class name