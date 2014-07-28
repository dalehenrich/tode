*topez-pharo-common
printOn: aStream
  aStream nextPutAll: self class name asString , '(' , self printLabel , ')'