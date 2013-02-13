printing
storeOn: aStream
    value isSymbol
        ifTrue: [ 
            aStream nextPut: $#.
            value asString printOn: aStream.
            ^ self ].
    value class == Character
        ifTrue: [ 
            aStream
                nextPut: $$;
                nextPut: value.
            ^ self ].
    value storeOn: aStream