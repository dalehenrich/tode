printing
basicPrintNamedOn: aStream indent: indent
    named ifNil: [ ^ self ].
    named
        keysAndValuesDo: [ :key :proxy | 
            aStream
                tab: indent;
                space;
                nextPutAll: key asString;
                tab: 3.
            proxy printOn: aStream indent: indent + 1 ]