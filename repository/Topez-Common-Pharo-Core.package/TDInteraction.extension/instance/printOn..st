*Topez-Common-Pharo-Core
printOn: aStream
  aStream nextPutAll: self class name asString , '(' , self printLabel , ')'