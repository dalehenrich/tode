as yet unclassified
analyzeNsc
    | node nsc |
    node := topez currentNode.
    nsc := objIn.
    (nsc isKindOf: UnorderedCollection)
        ifFalse: [ ^ 'Not an nsc' ].
    nsc _hasIndexes
        ifFalse: [ ^ 'No indexes on the nsc' ]