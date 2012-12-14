as yet unclassified
nodeFor: indexDict tuple: tuple
    | parent bucket childPathTerm depList pathTerm tupleIndex |
    parent := tuple at: 2.
    childPathTerm := tuple at: 3.
    depList := DependencyList for: parent.
    1 to: depList size by: 2 do: [ :index | 
        | term |
        term := depList at: index.
        (term children includesIdentical: childPathTerm)
            ifTrue: [ pathTerm := term ] ].
    ^ pathTerm == nil
        ifTrue: [ nil asTDObjectNode: self topez aspect: #'index' ]
        ifFalse: [ 
            bucket := indexDict indexBucketFor: parent.
            tupleIndex := bucket searchForKey: parent term: pathTerm.
            self
                indexDictionaryTupleNode: indexDict
                tuple:
                    {(bucket keyAt: tupleIndex).
                    (bucket valueAt: tupleIndex).
                    (bucket termAt: tupleIndex)} ]