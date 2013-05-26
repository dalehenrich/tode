*topez-server-core
printOn: aStream
  | ancestors |
  ancestors := self ancestry ancestors.
  self modified
    ifTrue: [ aStream nextPutAll: '* ' ].
  ancestors isEmpty
    ifTrue: [ 
      aStream nextPutAll: self packageName.
      ^ self ].
  aStream nextPutAll: ancestors first name