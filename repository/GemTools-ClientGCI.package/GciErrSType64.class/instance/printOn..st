printing
printOn: aStream
  aStream
    nextPutAll: self class name asString , '(err=' , self number asString , ')'