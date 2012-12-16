accessing
accumulateBlocks
    accumulateBlocks ifNil: [ accumulateBlocks := IdentitySet new ].
    ^ accumulateBlocks