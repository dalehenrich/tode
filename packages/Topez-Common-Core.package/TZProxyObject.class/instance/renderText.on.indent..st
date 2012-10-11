rendering
renderText: attribute on: textStream indent: indent
    | printBlock |
    printBlock := self class printBlocks
        at: attribute
        forClass: self renderLookupKey
        ifAbsent: [ 
            self header renderText: attribute on: textStream.
            named
                ifNotNil: [ 
                    | namedSize count |
                    named notEmpty
                        ifTrue: [ textStream cr ].
                    namedSize := named size.
                    count := 0.
                    named
                        keysAndValuesDo: [ :key :proxy | 
                            textStream
                                tab: indent;
                                space;
                                nextPutAll: key asString;
                                tab: 3.
                            proxy renderText: attribute on: textStream indent: indent + 1.
                            count := count + 1.
                            count < namedSize
                                ifTrue: [ textStream cr ] ] ].
            indexed ifNil: [ ^ self ].
            indexed notEmpty
                ifTrue: [ textStream cr ].
            1 to: indexed size do: [ :index | 
                | proxy |
                proxy := indexed at: index.
                textStream
                    tab: indent;
                    nextPut: $#;
                    nextPutAll: index printString;
                    space.
                proxy renderText: attribute on: textStream indent: indent + 1.
                index < indexed size
                    ifTrue: [ textStream cr ] ].
            ^ self ].
    printBlock value: self value: textStream value: indent