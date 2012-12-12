as yet unclassified
indexDictionaryNode: indexDictionary
    | collBkt tuples key value term node |
    self nodes at: indexDictionary ifPresent: [ :theNode | ^ theNode ].
    tuples := Array new.
    1 to: indexDictionary _basicSize do: [ :i | 
        collBkt := indexDictionary _at: i.
        1 to: collBkt numElements do: [ :j | 
            key := collBkt keyAt: j.
            value := collBkt valueAt: j.
            term := collBkt termAt: j.
            tuples addLast: (Array with: key with: value with: term) ] ].
    node := TDObjectNode new
        name: 'indexDictionary';
        topez: topez;
        basicContents: indexDictionary;
        listBlock: [ :theNode | 
                    ((1 to: tuples size) collect: [ :each | each asString ])
                        collect: [ :each | theNode renderNameText: each asString , theNode extension textAttributes: theNode class objectTextAttributes ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    (self indexDictionaryTupleNode: (tuples at: elementName asNumber))
                        parent: theNode;
                        yourself ];
        yourself.
    self nodes at: indexDictionary put: node.
    ^ node