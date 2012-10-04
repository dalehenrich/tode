rendering
renderText: attribute on: textStream indent: indent
    | printBlock |
    printBlock := self class
        at: attribute
        forClass: self renderLookupKey
        ifAbsent: [ 
            self header renderText: attribute on: textStream.
            named
                ifNotNil: [ 
                    named
                        keysAndValuesDo: [ :key :proxy | 
                            textStream
                                tab: indent;
                                space;
                                nextPutAll: key asString;
                                tab: 3.
                            proxy renderText: attribute on: textStream indent: indent + 1 ] ].
            indexed ifNil: [ ^ self ].
            1 to: indexed size do: [ :index | 
                | proxy |
                proxy := indexed at: index.
                textStream
                    tab: indent;
                    nextPut: $#;
                    nextPutAll: index printString;
                    space.
                proxy renderText: attribute on: textStream indent: indent + 1 ].
            ^ self ].
    printBlock value: self value: textStream value: indent