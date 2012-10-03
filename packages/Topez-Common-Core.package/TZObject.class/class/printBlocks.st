accessing printing
printBlocks
    PrintBlocks ifNil: [ PrintBlocks := Dictionary new ].
    ^ PrintBlocks