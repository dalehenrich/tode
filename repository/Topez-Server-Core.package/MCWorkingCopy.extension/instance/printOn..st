*topez-server-core
printOn: aStream
  | ancestors |
  ancestors := self ancestry ancestors.
  ancestors isEmpty
    ifTrue: [ 
      aStream nextPutAll: self packageName.
      ^ self ].
  aStream nextPutAll: ancestors first name