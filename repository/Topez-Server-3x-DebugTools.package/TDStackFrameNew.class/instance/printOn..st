printing
printOn: aStream
  | theSelf |
  self frameContents ifNil: [ ^ aStream nextPutAll: '..bad frame...' ].
  self isMethodForBlock
    ifTrue: [ aStream nextPutAll: '[] in ' ].
  self inClass == nil
    ifTrue: [ aStream nextPutAll: 'Executed Code'.
      ^ self ].
  theSelf := self theSelf.
  theSelf class ~= self inClass
    ifTrue: [ aStream
        nextPutAll: theSelf class name asString;
        nextPutAll: '(' , self inClass name asString , ')' ]
    ifFalse: [ aStream nextPutAll: self inClass name asString ].
  aStream nextPutAll: '>>'.
  aStream nextPutAll: self selector.
  (self process respondsTo: #'_localStepPointStringAt:')
    ifTrue: [ aStream
        nextPutAll:
          ' ' , (self process perform: #'_localStepPointStringAt:' with: self frameIndex) ]
    ifFalse: [ (self process respondsTo: #'_stepPointStringAt:')
        ifTrue: [ aStream
            nextPutAll:
              ' ' , (self process perform: #'_stepPointStringAt:' with: self frameIndex) ] ]