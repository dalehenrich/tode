accessing
printOn: aStream
  aStream nextPutAll: self class name asString , '(' , self label , ')'