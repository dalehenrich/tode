as yet unclassified
nodeFor: indexDict tuple: tuple
    | parent childPathTerm pathTerm offset index |
    parent := tuple at: 2.
    childPathTerm := tuple at: 3.
    offset := childPathTerm offset.
    index := childPathTerm at: 1.
    offset == 1
        ifTrue: [ ^ nil asTDObjectNode: self topez aspect: #'index' ].
    pathTerm := index at: offset - 1.
    ^ (BucketValueBag _hasInstance: parent)
        ifTrue: [ self nodeFor: indexDict array: parent asArray pathTerm: pathTerm ]
        ifFalse: [ self tupleNodeFor: indexDict parent: parent pathTerm: pathTerm ]