accessing printing
at: aSymbol forClass: aClassname put: printBlock
    | classDict printBlockList |
    classDict := self printBlocks at: aClassname ifAbsent: [ self printBlocks at: aClassname put: Dictionary new ].
    printBlockList := classDict at: aSymbol put: OrderedCollection new.
    printBlockList add: printBlock