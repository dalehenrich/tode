as yet unclassified
printOn: aStream
    self parent == nil
        ifTrue: [ 
            aStream nextPut: $/.
            ^ self ].
    self parent printOn: aStream.
    aStream nextPutAll: self printName