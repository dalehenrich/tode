*tode-gemstone-server-core
printOn: aStream
  aStream nextPutAll: self classSymbol asString.
  self classIsMeta
    ifTrue: [ aStream nextPutAll: ' class' ].
  aStream nextPutAll: '>>' , self methodSymbol asString