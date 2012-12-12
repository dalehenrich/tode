as yet unclassified
analyzeNsc
    | node nsc indexNode |
    node := topez currentNode.
    node
        addChildNode:
            (indexNode := TDDirectoryNode new
                name: 'index';
                readMe: 'index structure';
                yourself).
    nsc := objIn.
    (nsc isKindOf: UnorderedCollection)
        ifFalse: [ ^ 'Not an nsc' ].
    nsc _hasIndexes
        ifFalse: [ ^ 'No indexes on the nsc' ].
    indexNode addChildNode: (self nscNode: nsc).
    ^ 'analysis results in ./index'