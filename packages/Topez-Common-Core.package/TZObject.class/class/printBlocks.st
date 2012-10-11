accessing printing
printBlocks
    PrintBlocks ifNil: [ PrintBlocks := TZBlockStackDictionary new ].
    ^ PrintBlocks