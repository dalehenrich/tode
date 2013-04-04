as yet unclassified
printOn: aStream
  | frameSelf |
  self frameContents ifNil: [ ^ aStream nextPutAll: '..bad frame...' ].
  self isMethodForBlock
    ifTrue: [ aStream nextPutAll: '[] in ' ].
  self inClass == nil
    ifTrue: [ 
      aStream nextPutAll: 'Executed Code'.
      ^ self ].
  frameSelf := self frameSelf.
  frameSelf class ~= self inClass
    ifTrue: [ 
      aStream
        nextPutAll: frameSelf class name asString;
        nextPutAll: '(' , self inClass name asString , ')' ]
    ifFalse: [ aStream nextPutAll: self inClass name asString ].
  aStream nextPutAll: '>>'.
  aStream nextPutAll: self selector.
  aStream nextPutAll: ' ' , (self process _localStepPointStringAt: self frameIndex)