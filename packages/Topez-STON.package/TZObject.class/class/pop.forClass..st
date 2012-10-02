accessing printing
pop: aSymbol forClass: aClassname
    | classDict printBlockList |
    classDict := self printBlocks at: aClassname ifAbsent: [ self printBlocks at: aClassname put: Dictionary new ].
    printBlockList := classDict at: aSymbol ifAbsent: [ ^ self ].
    printBlockList size = 1
        ifTrue: [ 
            classDict removeKey: aSymbol.
            ^ self ].
    printBlockList removeFirst