accessing
printBlocks
    printBlocks ifNil: [ printBlocks := Dictionary new ].
    ^ printBlocks