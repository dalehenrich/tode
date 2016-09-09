private
printOn: aStream
  | frameSelfClassOop |
  self isMethodForBlock
    ifTrue: [ aStream nextPutAll: '[] in ' ].
  self inClassOop == nil
    ifTrue: [ 
      aStream nextPutAll: 'Executed Code'.
      ^ self ].
  frameSelfClassOop := self frameSelfClassOop.
  frameSelfClassOop ~= self inClassOop
    ifTrue: [ 
      aStream
        nextPutAll: self frameSelfClassName asString;
        nextPutAll: '(' , self inClassName asString , ')' ]
    ifFalse: [ aStream nextPutAll: self inClassName asString ].
  aStream nextPutAll: '>>'.
  aStream nextPutAll: self selector.
  aStream nextPutAll: ' ' , self stepPoint asString