as yet unclassified
tupleNodeFor: indexDict parent: parent pathTerm: pathTerm
    | bucket tupleIndex offset index |
    bucket := indexDict indexBucketFor: parent.
    tupleIndex := bucket searchForKey: parent term: pathTerm.
    ^ self
        indexDictionaryTupleNode: indexDict
        tuple:
            {(bucket keyAt: tupleIndex).
            (bucket valueAt: tupleIndex).
            (bucket termAt: tupleIndex)}