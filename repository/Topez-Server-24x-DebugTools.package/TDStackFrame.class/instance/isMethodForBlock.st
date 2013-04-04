as yet unclassified
isMethodForBlock
    ^ (self receiver isKindOf: BlockClosure) _and: [self receiver ~~ (self frameContents at: 8)]