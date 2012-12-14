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
                        ifTrue: [ self nodeFor: indexDict tuple: tuple ]
                        ifFalse: [ 
                            | index value |
                            index := tupleNames indexOf: elementName.
                            value := tuple at: index.
                            index = 1
                                ifTrue: [ self indexElementNode: value ]
                                ifFalse: [ 
                                    index = 2
                                        ifTrue: [ 
                                            (BucketValueBag _hasInstance: value)
                                                ifTrue: [ self bucketValueBagNode: value ]
                                                ifFalse: [ self indexElementNode: value ] ]
                                        ifFalse: [ self pathTermNode: value ] ] ])
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself.
    ^ node