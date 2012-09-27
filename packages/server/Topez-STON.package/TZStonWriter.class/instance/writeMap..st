writing
writeMap: hashedCollection
    "should dump class for all collections"

    self writeObject: hashedCollection do: [ self encodeMap: hashedCollection ]