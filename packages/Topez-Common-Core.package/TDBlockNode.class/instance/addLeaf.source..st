as yet unclassified
addLeaf: leafName source: blockSource
    | block |
    block := self createBlockFromSource: blockSource.
    ^ self addLeaf: leafName contents: block