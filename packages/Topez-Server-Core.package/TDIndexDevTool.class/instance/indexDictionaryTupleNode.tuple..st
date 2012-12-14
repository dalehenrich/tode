as yet unclassified
indexDictionaryTupleNode: indexDict tuple: tuple
    | node tupleNames |
    tupleNames := #('child' 'parent' 'term' 'parentLink').
    node := TDObjectNode new
        name: 'indexDictionary';
        topez: topez;
        basicContents: tuple;
        listBlock: [ :theNode | tupleNames ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    (elementName = 'parentLink'
                        ifTrue: [ 
                            | parent bucket childPathTerm depList pathTerm tupleIndex |
                            parent := tuple at: 2.
                            childPathTerm := tuple at: 3.
                            depList := DependencyList for: parent.
                            1 to: depList size by: 2 do: [ :index | 
                                | term |
                                term := depList at: index.
                                (term children includesIdentical: childPathTerm)
                                    ifTrue: [ pathTerm := term ] ].
                            pathTerm == nil
                                ifTrue: [ nil asTDObjectNode: self topez aspect: #'index' ]
                                ifFalse: [ 
                                    bucket := indexDict indexBucketFor: parent.
                                    tupleIndex := bucket searchForKey: parent term: pathTerm.
                                    self
                                        indexDictionaryTupleNode: indexDict
                                        tuple:
                                            {(bucket keyAt: tupleIndex).
                                            (bucket valueAt: tupleIndex).
                                            (bucket termAt: tupleIndex)} ] ]
                        ifFalse: [ 
                            | index |
                            index := tupleNames indexOf: elementName.
                            index <= 2
                                ifTrue: [ self indexElementNode: (tuple at: index) ]
                                ifFalse: [ self pathTermNode: (tuple at: index) ] ])
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself.
    ^ node