printing
basicPrintIndexedOn: aStream indent: indent
    indexed ifNil: [ ^ self ].
    1 to: indexed size do: [ :index | 
        | proxy |
        proxy := indexed at: index.
        aStream
            tab: indent;
            nextPut: $#;
            nextPutAll: index printString;
            space.
        proxy printOn: aStream indent: indent + 1 ]