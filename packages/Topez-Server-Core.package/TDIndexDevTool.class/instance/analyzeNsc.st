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
    indexNode addChildNode: self nscNode.
    nsc _hasIndexes
        ifFalse: [ ^ 'No indexes on the nsc' ]