accessing printing
at: aSymbol forClass: aClassname push: printBlock
    | classDict printBlockList |
    classDict := self printBlocks at: aClassname ifAbsent: [ self printBlocks at: aClassname put: Dictionary new ].
    printBlockList := classDict at: aSymbol ifAbsent: [ classDict at: aSymbol put: OrderedCollection new ].
    printBlockList addFirst: printBlock