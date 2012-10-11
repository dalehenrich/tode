accessing printing
pop: aSymbol forClass: aClassname
    | classDict printBlockList |
    classDict := self at: aClassname ifAbsent: [ ^ self ].
    printBlockList := classDict
        at: aSymbol
        ifAbsent: [ 
            classDict isEmpty
                ifTrue: [ self removeKey: aClassname ].
            ^ self ].
    printBlockList size = 1
        ifTrue: [ 
            classDict removeKey: aSymbol.
            classDict isEmpty
                ifTrue: [ self removeKey: aClassname ].
            ^ self ].
    printBlockList removeFirst