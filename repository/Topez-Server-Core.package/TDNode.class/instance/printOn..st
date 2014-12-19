as yet unclassified
printOn: aStream
  self parent == nil
    ifTrue: [ 
      self name ~= nil
        ifTrue: [ aStream nextPutAll: self name ].
      self isLeaf
        ifFalse: [ aStream nextPut: $/ ].
      ^ self ].
  self parent printOn: aStream.
  aStream nextPutAll: self name.
  self isLeaf
    ifFalse: [ aStream nextPut: $/ ]