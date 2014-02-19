*topez-server-core
printOn: aStream
  super printOn: aStream.
  aStream nextPutAll: '(numElements=' , self numElements printString , ')'