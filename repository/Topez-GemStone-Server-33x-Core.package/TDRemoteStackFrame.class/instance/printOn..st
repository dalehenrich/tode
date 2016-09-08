private
printOn: aStream
  | frameSelfClass |
  self isMethodForBlock
    ifTrue: [ aStream nextPutAll: '[] in ' ].
  self inClass == nil
    ifTrue: [ 
      aStream nextPutAll: 'Executed Code'.
      ^ self ].
  frameSelfClass := self frameSelfClass.
  frameSelfClass ~= self inClass
    ifTrue: [ 
      aStream
        nextPutAll: frameSelfClass name asString;
        nextPutAll: '(' , self inClass name asString , ')' ]
    ifFalse: [ aStream nextPutAll: self inClass name asString ].
  aStream nextPutAll: '>>'.
  aStream nextPutAll: self selector.
  aStream nextPutAll: ' ' , self stepPoint asString