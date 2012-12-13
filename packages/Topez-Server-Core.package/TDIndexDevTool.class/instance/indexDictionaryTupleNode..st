as yet unclassified
indexDictionaryTupleNode: tuple
    | node tupleNames |
    tupleNames := #('child' 'parent' 'term').
    node := TDObjectNode new
        name: 'indexDictionary';
        topez: topez;
        basicContents: tuple;
        listBlock: [ :theNode | tupleNames ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | index |
                    index := tupleNames indexOf: elementName.
                    (index <= 2
                        ifTrue: [ self indexElementNode: (tuple at: index) ]
                        ifFalse: [ self pathTermNode: (tuple at: index) ])
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself.
    ^ node