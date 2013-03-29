accessing printing
at: aSymbol forClass: aClassname put: printBlock
    | classDict printBlockList |
    classDict := self at: aClassname ifAbsent: [ self at: aClassname put: Dictionary new ].
    printBlockList := classDict at: aSymbol put: OrderedCollection new.
    printBlockList add: printBlock