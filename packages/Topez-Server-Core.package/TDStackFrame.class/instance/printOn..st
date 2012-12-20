as yet unclassified
printOn: aStream
    self inClass == nil
        ifTrue: [ 
            aStream nextPutAll: 'Executed Code'.
            ^ self ].
    self isMethodForBlock
        ifTrue: [ aStream nextPutAll: '[] in ' ].
    aStream nextPutAll: self inClass name asString.
    aStream nextPutAll: '>>'.
    aStream nextPutAll: self selector.
    aStream nextPutAll: ' ' , (self process _localStepPointStringAt: self frameIndex)