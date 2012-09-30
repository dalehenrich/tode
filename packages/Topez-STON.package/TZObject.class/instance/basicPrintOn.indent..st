printing
basicPrintOn: aStream indent: indent
    | title |
    title := self class name.
    aStream
        tab: indent;
        nextPutAll:
                (title first isVowel
                        ifTrue: [ 'an ' ]
                        ifFalse: [ 'a ' ]);
        nextPutAll: title