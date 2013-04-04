printing
basicPrintNamedOn: aStream indent: indent
    | count size |
    named ifNil: [ ^ self ].
    count := 0.
    size := named keys size.
    named
        keysAndValuesDo: [ :key :proxy | 
            aStream
                tab: indent;
                space;
                nextPutAll: key asString;
                tab: 3.
            proxy printOn: aStream indent: indent + 1.
            count := count + 1.
            count < size
                ifTrue: [ aStream cr ] ]